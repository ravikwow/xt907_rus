.class public Lcom/android/deskclock/AlarmTimelineView;
.super Landroid/view/View;
.source "AlarmTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmTimelineView$1;,
        Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;,
        Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;,
        Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;
    }
.end annotation


# instance fields
.field private mAlarmMinDistance:I

.field private mAlarmNodeInnerRadius:I

.field private mAlarmNodeInnerRadiusColor:I

.field private mAlarmNodeRadius:I

.field private mAlarmObserver:Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;

.field private mAlarmTextPadding:I

.field private mAlarmTextSize:I

.field private mAlarmTimelineColor:I

.field private mAlarmTimelineLength:I

.field private mAlarmTimelineMarginBottom:I

.field private mAlarmTimelineMarginTop:I

.field private mAlarmTimes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/util/Date;",
            "Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

.field private mCalendar:Ljava/util/Calendar;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mIsAnimatingOut:Z

.field private mNoAlarmsScheduled:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;

    .line 75
    new-instance v0, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;-><init>(Lcom/android/deskclock/AlarmTimelineView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmObserver:Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;

    .line 76
    new-instance v0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;-><init>(Lcom/android/deskclock/AlarmTimelineView;Lcom/android/deskclock/AlarmTimelineView$1;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    .line 206
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmTimelineView;->init(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;

    .line 75
    new-instance v0, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;-><init>(Lcom/android/deskclock/AlarmTimelineView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmObserver:Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;

    .line 76
    new-instance v0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;-><init>(Lcom/android/deskclock/AlarmTimelineView;Lcom/android/deskclock/AlarmTimelineView$1;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmTimelineView;->init(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmTimelineView;)Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmTimelineView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/AlarmTimelineView;Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;)Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmTimelineView;
    .param p1, "x1"    # Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmTimelineView;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmTimelineView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmTimelineView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/TreeMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmTimelineView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;

    return-object v0
.end method

.method private convertToDistance(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "firstDate"    # Ljava/util/Date;

    .prologue
    .line 360
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 361
    :cond_0
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineLength:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineMarginTop:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mResolver:Landroid/content/ContentResolver;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 219
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineColor:I

    .line 220
    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineLength:I

    .line 221
    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineMarginTop:I

    .line 222
    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v5, 0x7f090026

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineMarginBottom:I

    .line 224
    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeRadius:I

    .line 225
    const v4, 0x7f09002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeInnerRadius:I

    .line 226
    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeInnerRadiusColor:I

    .line 227
    const v4, 0x7f09002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTextSize:I

    .line 228
    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTextPadding:I

    .line 229
    const v4, 0x7f09002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget v5, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmMinDistance:I

    .line 231
    const v4, 0x7f0d00a5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mNoAlarmsScheduled:Ljava/lang/String;

    .line 233
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 235
    iget-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    const v5, 0x7f090028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    iget-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;

    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 240
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "E H mm"

    .line 241
    .local v1, "formatString":Ljava/lang/String;
    :goto_0
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 244
    iget-object v4, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void

    .line 240
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "formatString":Ljava/lang/String;
    :cond_0
    const-string v1, "E h mm a"

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 249
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 250
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/deskclock/provider/Alarm;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmObserver:Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 256
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmObserver:Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 257
    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mIsAnimatingOut:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v15, v1, 0x2

    .line 278
    .local v15, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineMarginTop:I

    move/from16 v18, v0

    .line 280
    .local v18, "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mNoAlarmsScheduled:Ljava/lang/String;

    int-to-float v2, v15

    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    .end local v15    # "x":I
    .end local v18    # "y":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 290
    .restart local v15    # "x":I
    .restart local v18    # "y":I
    :cond_3
    int-to-float v2, v15

    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v4, v15

    :try_start_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineLength:I

    add-int v1, v1, v18

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 292
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeRadius:I

    sub-int v1, v15, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTextPadding:I

    sub-int v16, v1, v2

    .line 293
    .local v16, "xLeft":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeRadius:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTextPadding:I

    add-int v17, v1, v2

    .line 296
    .local v17, "xRight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 297
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;>;"
    const/4 v8, 0x0

    .line 298
    .local v8, "firstDate":Ljava/util/Date;
    const/4 v13, 0x0

    .line 299
    .local v13, "prevY":I
    const/4 v9, 0x0

    .line 300
    .local v9, "i":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineLength:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineMarginTop:I

    add-int v11, v1, v2

    .line 301
    .local v11, "maxY":I
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;

    .line 303
    .local v12, "node":Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;
    iget-object v7, v12, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;->date:Ljava/util/Date;

    .line 305
    .local v7, "date":Ljava/util/Date;
    if-nez v8, :cond_6

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineMarginTop:I

    move/from16 v18, v0

    .line 308
    move-object v8, v7

    .line 316
    :goto_2
    move/from16 v0, v18

    if-le v0, v11, :cond_4

    .line 319
    const-string v1, "Y-value exceeded timeline length.  Should never happen."

    invoke-static {v1}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRepeating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v12, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;->isRepeating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 322
    move/from16 v18, v11

    .line 326
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    int-to-float v1, v15

    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeRadius:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 330
    iget-boolean v1, v12, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;->isRepeating:Z

    if-nez v1, :cond_5

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeInnerRadiusColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    int-to-float v1, v15

    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmNodeInnerRadius:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 334
    :cond_5
    move/from16 v13, v18

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 338
    .local v14, "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    rem-int/lit8 v1, v9, 0x2

    if-nez v1, :cond_7

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 341
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTextSize:I

    div-int/lit8 v2, v2, 0x3

    add-int v2, v2, v18

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 346
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 347
    goto/16 :goto_1

    .line 313
    .end local v14    # "timeString":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/deskclock/AlarmTimelineView;->convertToDistance(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmMinDistance:I

    add-int/2addr v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    goto/16 :goto_2

    .line 343
    .restart local v14    # "timeString":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 344
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTextSize:I

    div-int/lit8 v2, v2, 0x3

    add-int v2, v2, v18

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/AlarmTimelineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 262
    iget-object v1, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineLength:I

    .line 263
    .local v0, "timelineHeight":I
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineMarginTop:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimelineMarginBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 265
    return-void

    .line 262
    .end local v0    # "timelineHeight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAnimatingOut(Z)V
    .locals 0
    .param p1, "animatingOut"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/android/deskclock/AlarmTimelineView;->mIsAnimatingOut:Z

    .line 355
    return-void
.end method
