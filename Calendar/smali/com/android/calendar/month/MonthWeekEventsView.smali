.class public Lcom/android/calendar/month/MonthWeekEventsView;
.super Lcom/android/calendar/month/SimpleWeekView;
.source "MonthWeekEventsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;,
        Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;
    }
.end annotation


# static fields
.field private static CONFLICT_COLOR:I

.field private static DAY_SEPARATOR_INNER_WIDTH:I

.field private static DAY_SEPARATOR_OUTER_WIDTH:I

.field private static DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

.field private static DAY_SEPARATOR_VERTICAL_LENGTH:I

.field private static DEFAULT_EDGE_SPACING:I

.field private static DNA_ALL_DAY_HEIGHT:I

.field private static DNA_ALL_DAY_WIDTH:I

.field private static DNA_MARGIN:I

.field private static DNA_MIN_SEGMENT_HEIGHT:I

.field private static DNA_SIDE_PADDING:I

.field private static DNA_WIDTH:I

.field private static EVENT_BOTTOM_PADDING:I

.field private static EVENT_LINE_PADDING:I

.field private static EVENT_RIGHT_PADDING:I

.field private static EVENT_SQUARE_BORDER:I

.field private static EVENT_SQUARE_WIDTH:I

.field private static EVENT_TEXT_COLOR:I

.field private static EVENT_X_OFFSET_LANDSCAPE:I

.field private static EVENT_Y_OFFSET_LANDSCAPE:I

.field private static EVENT_Y_OFFSET_PORTRAIT:I

.field private static MIN_WEEK_WIDTH:I

.field private static SIDE_PADDING_MONTH_NUMBER:I

.field private static SIDE_PADDING_WEEK_NUMBER:I

.field private static SPACING_WEEK_NUMBER:I

.field private static TEXT_SIZE_EVENT:I

.field private static TEXT_SIZE_EVENT_TITLE:I

.field private static TEXT_SIZE_MONTH_NAME:I

.field private static TEXT_SIZE_MONTH_NUMBER:I

.field private static TEXT_SIZE_MORE_EVENTS:I

.field private static TEXT_SIZE_WEEK_NUM:I

.field private static TODAY_HIGHLIGHT_WIDTH:I

.field private static TOP_PADDING_MONTH_NUMBER:I

.field private static TOP_PADDING_WEEK_NUMBER:I

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mInitialized:Z

.field private static mShowDetailsInMonth:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private final mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

.field private mClickedDayColor:I

.field private mClickedDayIndex:I

.field protected mDNAAllDayPaint:Landroid/graphics/Paint;

.field protected mDNATimePaint:Landroid/graphics/Paint;

.field protected mDaySeparatorInnerColor:I

.field private mDayXs:[I

.field protected mDeclinedEventPaint:Landroid/text/TextPaint;

.field mDna:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventAscentHeight:I

.field protected mEventChipOutlineColor:I

.field protected mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

.field protected mEventExtrasPaint:Landroid/text/TextPaint;

.field protected mEventHeight:I

.field protected mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

.field protected mEventPaint:Landroid/text/TextPaint;

.field protected mEventSquarePaint:Landroid/graphics/Paint;

.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mExtrasAscentHeight:I

.field protected mExtrasDescent:I

.field protected mExtrasHeight:I

.field protected mFramedEventPaint:Landroid/text/TextPaint;

.field protected mHasToday:Z

.field protected mMonthBGColor:I

.field protected mMonthBGOtherColor:I

.field protected mMonthBGTodayColor:I

.field protected mMonthBusyBitsBusyTimeColor:I

.field protected mMonthBusyBitsConflictTimeColor:I

.field protected mMonthDeclinedEventColor:I

.field protected mMonthDeclinedExtrasColor:I

.field protected mMonthEventColor:I

.field protected mMonthEventExtraColor:I

.field protected mMonthEventExtraOtherColor:I

.field protected mMonthEventOtherColor:I

.field protected mMonthNameColor:I

.field protected mMonthNameOtherColor:I

.field protected mMonthNumAscentHeight:I

.field protected mMonthNumColor:I

.field protected mMonthNumHeight:I

.field protected mMonthNumOtherColor:I

.field protected mMonthNumTodayColor:I

.field protected mMonthWeekNumColor:I

.field protected mOrientation:I

.field protected mSolidBackgroundEventPaint:Landroid/text/TextPaint;

.field protected mToday:Landroid/text/format/Time;

.field protected mTodayAnimateColor:I

.field private mTodayAnimator:Landroid/animation/ObjectAnimator;

.field protected mTodayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mTodayIndex:I

.field protected mUnsortedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mWeekNumAscentHeight:I

.field protected mWeekNumPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0xc

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 66
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 67
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    .line 68
    const/16 v0, 0xe

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    .line 69
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    .line 70
    const/16 v0, 0xe

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    .line 71
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    .line 73
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    .line 74
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    .line 75
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    .line 76
    sput v5, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    .line 77
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 78
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    .line 79
    const/high16 v0, -0x1000000

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    .line 80
    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_TEXT_COLOR:I

    .line 82
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    .line 83
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 84
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 85
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    .line 86
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    .line 87
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 88
    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 89
    const/16 v0, 0x35

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 90
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 91
    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->MIN_WEEK_WIDTH:I

    .line 93
    const/16 v0, 0x26

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 94
    sput v5, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 95
    const/4 v0, 0x7

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 96
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    .line 97
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    .line 98
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    .line 99
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    .line 100
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 102
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 104
    const/16 v0, 0x18

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 105
    sput-boolean v2, Lcom/android/calendar/month/MonthWeekEventsView;->mInitialized:Z

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 123
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/month/MonthWeekEventsView;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    .line 109
    iput-boolean v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 110
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    .line 112
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    .line 113
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 114
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    .line 117
    new-instance v0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    const/16 v1, 0x460

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;-><init>(Lcom/android/calendar/month/MonthWeekEventsView;I)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    .line 167
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    .line 171
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventChipOutlineColor:I

    .line 176
    iput v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    .line 177
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 179
    new-instance v0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;-><init>(Lcom/android/calendar/month/MonthWeekEventsView;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/month/MonthWeekEventsView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/month/MonthWeekEventsView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/calendar/month/MonthWeekEventsView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/month/MonthWeekEventsView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/calendar/month/MonthWeekEventsView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/month/MonthWeekEventsView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    return p1
.end method

.method private computeDayLeftPosition(I)I
    .locals 5
    .param p1, "day"    # I

    .prologue
    .line 576
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    .line 577
    .local v0, "effectiveWidth":I
    const/4 v1, 0x0

    .line 578
    .local v1, "x":I
    const/4 v2, 0x0

    .line 579
    .local v2, "xOffset":I
    iget-boolean v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v3, :cond_0

    .line 580
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v2, v3, v4

    .line 581
    sub-int/2addr v0, v2

    .line 583
    :cond_0
    mul-int v3, p1, v0

    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    div-int/2addr v3, v4

    add-int v1, v3, v2

    .line 584
    return v1
.end method

.method private drawClick(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 661
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 663
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 664
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 665
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    invoke-direct {p0, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 666
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 667
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 668
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 669
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 670
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 672
    .end local v0    # "alpha":I
    :cond_0
    return-void
.end method


# virtual methods
.method public clearClickedDay()V
    .locals 1

    .prologue
    .line 1107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    .line 1108
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1109
    return-void
.end method

.method public createDna(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "unsortedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v4, 0x0

    .line 270
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->MIN_WEEK_WIDTH:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 274
    iput-object v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    iput-object v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 281
    sget-boolean v0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 283
    .local v9, "numDays":I
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 284
    .local v8, "effectiveWidth":I
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v0, :cond_3

    .line 285
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v8, v0

    .line 287
    :cond_3
    div-int v0, v8, v9

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 288
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 289
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    .line 290
    const/4 v7, 0x0

    .local v7, "day":I
    :goto_1
    if-ge v7, v9, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    invoke-direct {p0, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    add-int/2addr v1, v4

    aput v1, v0, v7

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 295
    :cond_4
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    .line 296
    .local v2, "top":I
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    sub-int v3, v0, v1

    .line 297
    .local v3, "bottom":I
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    iget-object v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    goto :goto_0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "i":I
    const/4 v1, 0x0

    .line 627
    .local v1, "offset":I
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 628
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 629
    iget-boolean v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v2, :cond_0

    .line 630
    add-int/lit8 v0, v0, 0x1

    .line 631
    add-int/lit8 v1, v1, 0x1

    .line 633
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_5

    .line 634
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 636
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sub-int v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 637
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 638
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 651
    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v2, :cond_4

    .line 652
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGTodayColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 653
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 654
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 655
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 657
    :cond_4
    return-void

    .line 641
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    aget-boolean v2, v2, v0

    if-nez v2, :cond_3

    .line 642
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_7

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_6

    .line 644
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 646
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 647
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sub-int v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 648
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 649
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawDNA(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 972
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Utils$DNAStrand;

    .line 973
    .local v9, "strand":Lcom/android/calendar/Utils$DNAStrand;
    iget v0, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    if-eq v0, v1, :cond_0

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 978
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto :goto_0

    .line 981
    .end local v9    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Utils$DNAStrand;

    .line 982
    .restart local v9    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 983
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 984
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    if-nez v0, :cond_4

    .line 1003
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    :cond_3
    return-void

    .line 989
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    array-length v8, v0

    .line 990
    .local v8, "numDays":I
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v10, v0, 0x2

    .line 991
    .local v10, "xOffset":I
    if-eqz v9, :cond_3

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    array-length v0, v0

    if-ne v0, v8, :cond_3

    .line 992
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_3

    .line 995
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v0, v0, v6

    if-eqz v0, :cond_5

    .line 996
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    iget-object v1, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 997
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    aget v0, v0, v6

    add-int/2addr v0, v10

    int-to-float v1, v0

    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    aget v0, v0, v6

    add-int/2addr v0, v10

    int-to-float v3, v0

    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 992
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method protected drawDaySeparators(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 589
    const/16 v9, 0x20

    new-array v3, v9, [F

    .line 590
    .local v3, "lines":[F
    const/16 v0, 0x18

    .line 591
    .local v0, "count":I
    const/4 v4, 0x0

    .line 592
    .local v4, "wkNumOffset":I
    const/4 v1, 0x0

    .line 593
    .local v1, "i":I
    iget-boolean v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v9, :cond_0

    .line 595
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v6, v9, v10

    .line 596
    .local v6, "xOffset":I
    add-int/lit8 v0, v0, 0x4

    .line 597
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    int-to-float v9, v6

    aput v9, v3, v1

    .line 598
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput v11, v3, v2

    .line 599
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    int-to-float v9, v6

    aput v9, v3, v1

    .line 600
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    int-to-float v9, v9

    aput v9, v3, v2

    .line 601
    add-int/lit8 v4, v4, 0x1

    .line 603
    .end local v6    # "xOffset":I
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 604
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aput v11, v3, v1

    .line 605
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput v11, v3, v2

    .line 606
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    iget v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    int-to-float v9, v9

    aput v9, v3, v1

    .line 607
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput v11, v3, v2

    .line 608
    const/4 v7, 0x0

    .line 609
    .local v7, "y0":I
    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    .local v8, "y1":I
    move v2, v1

    .line 611
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 612
    div-int/lit8 v9, v2, 0x4

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v5

    .line 613
    .local v5, "x":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    int-to-float v9, v5

    aput v9, v3, v2

    .line 614
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    int-to-float v9, v7

    aput v9, v3, v1

    .line 615
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    int-to-float v9, v5

    aput v9, v3, v2

    .line 616
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    int-to-float v9, v8

    aput v9, v3, v1

    goto :goto_0

    .line 618
    .end local v5    # "x":I
    :cond_1
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorInnerColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 620
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v0, v10}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 621
    return-void
.end method

.method protected drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZZZ)I
    .locals 16

    .prologue
    .line 840
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    add-int/lit8 v5, v1, 0x1

    .line 841
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    div-int/lit8 v6, v1, 0x2

    .line 842
    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 843
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    .line 844
    if-eqz v7, :cond_1

    .line 846
    mul-int/lit8 v2, v5, 0x2

    add-int/2addr v1, v2

    .line 851
    :cond_0
    :goto_0
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 852
    if-eqz p6, :cond_e

    .line 854
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int/2addr v3, v1

    .line 859
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasHeight:I

    add-int/2addr v1, v2

    move v2, v3

    .line 862
    :goto_1
    add-int v3, p4, v2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    if-le v1, v3, :cond_2

    .line 949
    :goto_2
    return p4

    .line 847
    :cond_1
    if-eqz p7, :cond_0

    .line 849
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasHeight:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 865
    :cond_2
    if-nez p8, :cond_3

    .line 866
    add-int p4, p4, v2

    goto :goto_2

    .line 869
    :cond_3
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    move v9, v1

    .line 870
    :goto_3
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/calendar/Event;->color:I

    .line 871
    if-eqz v9, :cond_d

    .line 872
    invoke-static {v1}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v1

    move v4, v1

    .line 877
    :goto_4
    if-eqz v7, :cond_7

    .line 881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move/from16 v0, p3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sub-int v2, p5, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    add-int v2, p4, v6

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    add-int v2, v2, p4

    mul-int/lit8 v3, v5, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 885
    add-int v2, p3, v5

    .line 886
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventAscentHeight:I

    add-int v1, v1, p4

    add-int/2addr v1, v5

    .line 887
    sub-int p5, p5, v5

    move v10, v2

    .line 898
    :goto_5
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 899
    const/4 v2, 0x0

    .line 900
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    .line 901
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 902
    if-eqz v7, :cond_4

    .line 903
    const/4 v2, 0x1

    .line 906
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 910
    sub-int v3, p5, v10

    int-to-float v12, v3

    .line 911
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v6, v12, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 914
    if-eqz v2, :cond_8

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    .line 928
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v10

    int-to-float v1, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 929
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    add-int v11, p4, v1

    .line 930
    if-eqz v7, :cond_5

    .line 931
    mul-int/lit8 v1, v5, 0x2

    add-int/2addr v11, v1

    .line 934
    :cond_5
    if-eqz p7, :cond_c

    if-nez v7, :cond_c

    .line 936
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasAscentHeight:I

    add-int v13, v11, v1

    .line 937
    sget-object v1, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/month/MonthWeekEventsView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/calendar/Event;->endMillis:J

    const v7, 0x80001

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v14, 0x0

    invoke-static {v8, v14}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v12, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 942
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v10

    int-to-float v4, v13

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 944
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasHeight:I

    add-int/2addr v1, v11

    .line 947
    :goto_8
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int p4, v1, v2

    .line 949
    goto/16 :goto_2

    .line 869
    :cond_6
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_3

    .line 889
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move/from16 v0, p3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 890
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v2, v2, p3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventAscentHeight:I

    add-int v2, v2, p4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 893
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v1, v1, p3

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    add-int/2addr v2, v1

    .line 894
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventAscentHeight:I

    add-int v1, v1, p4

    move v10, v2

    .line 895
    goto/16 :goto_5

    .line 917
    :cond_8
    if-eqz v9, :cond_9

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    goto/16 :goto_6

    .line 920
    :cond_9
    if-eqz v7, :cond_a

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mFramedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mFramedEventPaint:Landroid/text/TextPaint;

    goto/16 :goto_6

    .line 926
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    goto/16 :goto_6

    .line 942
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    goto :goto_7

    :cond_c
    move v1, v11

    goto :goto_8

    :cond_d
    move v4, v1

    goto/16 :goto_4

    :cond_e
    move v15, v2

    move v2, v1

    move v1, v15

    goto/16 :goto_1
.end method

.method protected drawEvents(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    if-nez v3, :cond_1

    .line 776
    :cond_0
    return-void

    .line 725
    :cond_1
    const/16 v20, -0x1

    .line 726
    .local v20, "day":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 727
    .local v22, "eventDay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    add-int/lit8 v20, v20, 0x1

    .line 728
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 732
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    add-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .line 733
    .local v6, "xSquare":I
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v8

    .line 735
    .local v8, "rightEdge":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 736
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    add-int v15, v3, v4

    .line 737
    .local v15, "ySquare":I
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v8, v3

    .line 744
    :goto_1
    const/4 v10, 0x1

    .line 745
    .local v10, "showTimes":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 746
    .local v24, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    move v7, v15

    .line 747
    .local v7, "yTest":I
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 748
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 749
    .local v5, "event":Lcom/android/calendar/Event;
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZZZ)I

    move-result v25

    .line 751
    .local v25, "newY":I
    move/from16 v0, v25

    if-ne v0, v7, :cond_6

    .line 752
    const/4 v10, 0x0

    .line 758
    .end local v5    # "event":Lcom/android/calendar/Event;
    .end local v25    # "newY":I
    :cond_3
    const/16 v21, 0x0

    .line 759
    .local v21, "eventCount":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 760
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 761
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 762
    .restart local v5    # "event":Lcom/android/calendar/Event;
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v5

    move v14, v6

    move/from16 v16, v8

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZZZ)I

    move-result v25

    .line 764
    .restart local v25    # "newY":I
    move/from16 v0, v25

    if-ne v0, v15, :cond_7

    .line 771
    .end local v5    # "event":Lcom/android/calendar/Event;
    .end local v25    # "newY":I
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v26, v3, v21

    .line 772
    .local v26, "remaining":I
    if-lez v26, :cond_2

    .line 773
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->drawMoreEvents(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0

    .line 739
    .end local v7    # "yTest":I
    .end local v10    # "showTimes":Z
    .end local v15    # "ySquare":I
    .end local v21    # "eventCount":I
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .end local v26    # "remaining":I
    :cond_5
    sget v15, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 740
    .restart local v15    # "ySquare":I
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    sub-int/2addr v8, v3

    goto :goto_1

    .line 755
    .restart local v5    # "event":Lcom/android/calendar/Event;
    .restart local v7    # "yTest":I
    .restart local v10    # "showTimes":Z
    .restart local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .restart local v25    # "newY":I
    :cond_6
    move/from16 v7, v25

    .line 756
    goto :goto_2

    .line 767
    .restart local v21    # "eventCount":I
    :cond_7
    add-int/lit8 v21, v21, 0x1

    .line 768
    move/from16 v15, v25

    .line 769
    goto :goto_3
.end method

.method protected drawMoreEvents(Landroid/graphics/Canvas;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 953
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasDescent:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 954
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 956
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 957
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 958
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 959
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 960
    return-void
.end method

.method protected drawToday(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000

    .line 561
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 562
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 563
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 564
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 565
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    invoke-direct {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 566
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 568
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimateColor:I

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 570
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 571
    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "i":I
    const/4 v4, -0x1

    .line 680
    .local v4, "offset":I
    iget v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 681
    .local v5, "todayIndex":I
    const/4 v6, 0x0

    .line 682
    .local v6, "x":I
    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    .line 683
    .local v3, "numCount":I
    iget-boolean v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v8, :cond_0

    .line 684
    sget v8, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    iget v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v6, v8, v10

    .line 685
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumAscentHeight:I

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    add-int v7, v8, v10

    .line 686
    .local v7, "y":I
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v8, v8, v9

    int-to-float v10, v6

    int-to-float v11, v7

    iget-object v12, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 687
    add-int/lit8 v3, v3, 0x1

    .line 688
    add-int/lit8 v0, v0, 0x1

    .line 689
    add-int/lit8 v5, v5, 0x1

    .line 690
    add-int/lit8 v4, v4, 0x1

    .line 694
    .end local v7    # "y":I
    :cond_0
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumAscentHeight:I

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    add-int v7, v8, v10

    .line 696
    .restart local v7    # "y":I
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v2, v8, v0

    .line 697
    .local v2, "isFocusMonth":Z
    const/4 v1, 0x0

    .line 698
    .local v1, "isBold":Z
    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    :goto_0
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 699
    :goto_1
    if-ge v0, v3, :cond_7

    .line 700
    iget-boolean v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v8, :cond_5

    if-ne v5, v0, :cond_5

    .line 701
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumTodayColor:I

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 702
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 703
    add-int/lit8 v8, v0, 0x1

    if-ge v8, v3, :cond_1

    .line 706
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    add-int/lit8 v10, v0, 0x1

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    const/4 v2, 0x1

    .line 712
    :cond_1
    :goto_2
    sub-int v8, v0, v4

    invoke-direct {p0, v8}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v8

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    sub-int v6, v8, v10

    .line 713
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v8, v8, v0

    int-to-float v10, v6

    int-to-float v11, v7

    iget-object v12, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 714
    if-eqz v1, :cond_2

    .line 715
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 699
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 698
    :cond_3
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    goto :goto_0

    :cond_4
    move v2, v9

    .line 706
    goto :goto_2

    .line 708
    :cond_5
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v8, v8, v0

    if-eq v8, v2, :cond_1

    .line 709
    iget-object v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v2, v8, v0

    .line 710
    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_6

    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    :goto_3
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_6
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    goto :goto_3

    .line 718
    :cond_7
    return-void
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 5

    .prologue
    const v4, 0x253d8c

    const/4 v3, 0x1

    .line 1032
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayIndexFromLocation(F)I

    move-result v0

    .line 1033
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1034
    const/4 v0, 0x0

    .line 1051
    :goto_0
    return-object v0

    .line 1036
    :cond_0
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    add-int/2addr v0, v1

    .line 1038
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1039
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    if-nez v2, :cond_1

    .line 1041
    if-ge v0, v4, :cond_2

    .line 1042
    add-int/lit8 v0, v0, 0x1

    .line 1050
    :cond_1
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-object v0, v1

    .line 1051
    goto :goto_0

    .line 1043
    :cond_2
    if-ne v0, v4, :cond_1

    .line 1044
    const/4 v0, 0x0

    const/16 v2, 0x7b2

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/format/Time;->set(III)V

    .line 1045
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-object v0, v1

    .line 1046
    goto :goto_0
.end method

.method public getDayIndexFromLocation(F)I
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 1022
    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v0, v1, v2

    .line 1023
    .local v0, "dayStart":I
    :goto_0
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 1024
    :cond_0
    const/4 v1, -0x1

    .line 1027
    :goto_1
    return v1

    .line 1022
    .end local v0    # "dayStart":I
    :cond_1
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    goto :goto_0

    .line 1027
    .restart local v0    # "dayStart":I
    :cond_2
    int-to-float v1, v0

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method

.method protected initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000

    const/4 v4, 0x1

    .line 346
    invoke-super {p0}, Lcom/android/calendar/month/SimpleWeekView;->initView()V

    .line 348
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mInitialized:Z

    if-nez v1, :cond_2

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 350
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090002

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    .line 351
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    .line 352
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 353
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 354
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    .line 355
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_TEXT_COLOR:I

    .line 356
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 357
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 358
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    .line 359
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 360
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    .line 361
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 362
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 363
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    .line 364
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    .line 365
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    .line 366
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    .line 367
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    .line 368
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 369
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 370
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 371
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 372
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 373
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 374
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 375
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    .line 376
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    .line 377
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    .line 378
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 379
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    .line 380
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    .line 381
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    .line 382
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    .line 383
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    .line 384
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    .line 385
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    .line 386
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 387
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 389
    :cond_0
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-nez v1, :cond_1

    .line 390
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 392
    :cond_1
    sput-boolean v4, Lcom/android/calendar/month/MonthWeekEventsView;->mInitialized:Z

    .line 394
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->loadColors(Landroid/content/Context;)V

    .line 398
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 399
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 401
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 402
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 404
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 405
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 407
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumAscentHeight:I

    .line 408
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    .line 410
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    .line 411
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 412
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 413
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 414
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    .line 417
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_TEXT_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSolidBackgroundEventPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFramedEventPaint:Landroid/text/TextPaint;

    .line 420
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    .line 421
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 422
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 423
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 424
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedEventColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventAscentHeight:I

    .line 427
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    .line 429
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    .line 430
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 431
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 432
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 433
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 434
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 437
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasHeight:I

    .line 438
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasAscentHeight:I

    .line 439
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mExtrasDescent:I

    .line 441
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    .line 442
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 443
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 445
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 446
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedExtrasColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 448
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 450
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    .line 451
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 452
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 454
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 456
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 458
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumAscentHeight:I

    .line 460
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    .line 461
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    .line 462
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBusyBitsBusyTimeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 464
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 465
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 466
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBusyBitsConflictTimeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 469
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 471
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    .line 472
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 473
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 487
    return-void
.end method

.method protected loadColors(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 319
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthWeekNumColor:I

    .line 320
    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    .line 321
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    .line 322
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumTodayColor:I

    .line 323
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNameColor:I

    .line 324
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNameOtherColor:I

    .line 325
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventColor:I

    .line 326
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedEventColor:I

    .line 327
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedExtrasColor:I

    .line 328
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraColor:I

    .line 329
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventOtherColor:I

    .line 330
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraOtherColor:I

    .line 331
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGTodayColor:I

    .line 332
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    .line 333
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGColor:I

    .line 334
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorInnerColor:I

    .line 335
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimateColor:I

    .line 336
    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayColor:I

    .line 337
    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    .line 338
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawDaySeparators(Landroid/graphics/Canvas;)V

    .line 546
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawToday(Landroid/graphics/Canvas;)V

    .line 549
    :cond_0
    sget-boolean v0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvents(Landroid/graphics/Canvas;)V

    .line 557
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawClick(Landroid/graphics/Canvas;)V

    .line 558
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/calendar/month/MonthWeekEventsView;->createDna(Ljava/util/ArrayList;)V

    .line 555
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawDNA(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 1056
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1059
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 1061
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1062
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1099
    :goto_0
    return v0

    .line 1064
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    .line 1065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v7

    .line 1066
    if-eqz v7, :cond_6

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    invoke-static {v7, v1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 1068
    :cond_2
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1069
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 1071
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v8

    .line 1073
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 1075
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v1, v2

    .line 1076
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    sub-int v1, v3, v1

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 1078
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1079
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v9

    .line 1080
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/calendar/Event;

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    iget-boolean v1, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v1, :cond_4

    .line 1084
    const/16 v5, 0x15

    .line 1085
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1086
    const/16 v5, 0x95

    .line 1091
    :cond_3
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, v3, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v3, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1089
    :cond_4
    const/16 v5, 0x2014

    goto :goto_2

    .line 1095
    :cond_5
    invoke-virtual {p0, v8}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1096
    iput-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    :cond_6
    move v0, v6

    .line 1099
    goto/16 :goto_0
.end method

.method public setAnimateTodayAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 537
    iput p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    .line 538
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 539
    return-void
.end method

.method public setClickedDay(F)V
    .locals 1
    .param p1, "xLocation"    # F

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayIndexFromLocation(F)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mClickedDayIndex:I

    .line 1104
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1105
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "sortedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    .line 304
    if-nez p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    if-eq v0, v1, :cond_0

    .line 308
    const-string v0, "MonthView"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    const-string v0, "MonthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events size must be same as days displayed: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " days="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    goto :goto_0
.end method

.method public setEvents(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "sortedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    .local p2, "unsortedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;)V

    .line 261
    invoke-virtual {p0, p2}, Lcom/android/calendar/month/MonthWeekEventsView;->createDna(Ljava/util/ArrayList;)V

    .line 262
    return-void
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .param p2, "tz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 493
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    .line 497
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/calendar/month/MonthWeekEventsView;->updateToday(Ljava/lang/String;)Z

    .line 498
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 500
    const-string v0, "animate_today"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v0, :cond_2

    .line 501
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 504
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 506
    :cond_1
    const-string v0, "animateTodayAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    const/16 v5, 0x50

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 508
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 509
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 510
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->setFadingIn(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z

    .line 513
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 514
    monitor-exit v1

    .line 516
    :cond_2
    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateSelectionPositions()V
    .locals 4

    .prologue
    .line 1007
    iget-boolean v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v2, :cond_1

    .line 1008
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    sub-int v1, v2, v3

    .line 1009
    .local v1, "selectedPosition":I
    if-gez v1, :cond_0

    .line 1010
    add-int/lit8 v1, v1, 0x7

    .line 1012
    :cond_0
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 1013
    .local v0, "effectiveWidth":I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v0, v2

    .line 1014
    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    .line 1015
    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    .line 1016
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    .line 1017
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    .line 1019
    .end local v0    # "effectiveWidth":I
    .end local v1    # "selectedPosition":I
    :cond_1
    return-void
.end method

.method public updateToday(Ljava/lang/String;)Z
    .locals 7
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    iput-object p1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 523
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 524
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 525
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 526
    .local v0, "julianToday":I
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 527
    iput-boolean v6, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 528
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 533
    :goto_0
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    return v1

    .line 530
    :cond_0
    iput-boolean v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 531
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    goto :goto_0
.end method
