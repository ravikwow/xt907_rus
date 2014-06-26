.class Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;
.super Lcom/android/deskclock/worldclock/WorldClockAdapter;
.source "DigitalWidgetViewsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalWidgetViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteWorldClockAdapter"
.end annotation


# instance fields
.field private final mFont24Size:F

.field private final mFontSize:F

.field final synthetic this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;


# direct methods
.method public constructor <init>(Lcom/android/alarmclock/DigitalWidgetViewsFactory;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    .line 54
    invoke-direct {p0, p2}, Lcom/android/deskclock/worldclock/WorldClockAdapter;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->mFontSize:F

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->mFont24Size:F

    .line 57
    return-void
.end method

.method private hideView(Landroid/widget/RemoteViews;III)V
    .locals 1
    .param p1, "clock"    # Landroid/widget/RemoteViews;
    .param p2, "clockId"    # I
    .param p3, "labelId"    # I
    .param p4, "dayId"    # I

    .prologue
    const/4 v0, 0x4

    .line 129
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 130
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 131
    invoke-virtual {p1, p4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    return-void
.end method

.method private updateView(Landroid/widget/RemoteViews;Lcom/android/deskclock/worldclock/CityObj;III)V
    .locals 14
    .param p1, "clock"    # Landroid/widget/RemoteViews;
    .param p2, "cityObj"    # Lcom/android/deskclock/worldclock/CityObj;
    .param p3, "clockId"    # I
    .param p4, "labelId"    # I
    .param p5, "dayId"    # I

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 97
    .local v6, "now":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 98
    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 99
    .local v5, "myDayOfWeek":I
    iget-object v7, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesDb:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/worldclock/CityObj;

    .line 100
    .local v2, "cityInDb":Lcom/android/deskclock/worldclock/CityObj;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    .line 101
    .local v3, "cityTZ":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 104
    .local v1, "cityDayOfWeek":I
    iget-object v7, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    # getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mResources:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$100(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    move/from16 v0, p3

    invoke-static {p1, v7, v0}, Lcom/android/alarmclock/WidgetUtils;->setTimeFormat(Landroid/widget/RemoteViews;II)V

    .line 106
    iget-object v7, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    # getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F
    invoke-static {v7}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$200(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)F

    move-result v8

    iget-object v7, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    # getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$000(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->mFont24Size:F

    :goto_1
    mul-float v4, v8, v7

    .line 108
    .local v4, "fontSize":F
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    # getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F
    invoke-static {v8}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$200(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)F

    move-result v8

    mul-float/2addr v8, v4

    move/from16 v0, p3

    invoke-virtual {p1, v0, v7, v8}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 109
    const-string v7, "setTimeZone"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {p1, v0, v7, v8}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/deskclock/Utils;->getCityName(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 114
    if-eq v5, v1, :cond_2

    .line 115
    iget-object v7, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    # getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$000(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d0096

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v6, v11, v12, v13}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    const/4 v7, 0x0

    move/from16 v0, p5

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    :goto_2
    const/4 v7, 0x0

    move/from16 v0, p3

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 124
    const/4 v7, 0x0

    move/from16 v0, p4

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    return-void

    .line 100
    .end local v1    # "cityDayOfWeek":I
    .end local v3    # "cityTZ":Ljava/lang/String;
    .end local v4    # "fontSize":F
    :cond_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    .restart local v1    # "cityDayOfWeek":I
    .restart local v3    # "cityTZ":Ljava/lang/String;
    :cond_1
    iget v7, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->mFontSize:F

    goto :goto_1

    .line 120
    .restart local v4    # "fontSize":F
    :cond_2
    const/16 v7, 0x8

    move/from16 v0, p5

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method


# virtual methods
.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 12
    .param p1, "position"    # I

    .prologue
    const v11, 0x7f0e00a1

    const v10, 0x7f0e00a0

    const v9, 0x7f0e009f

    const v8, 0x7f0e009e

    .line 61
    mul-int/lit8 v6, p1, 0x2

    .line 62
    .local v6, "index":I
    if-ltz v6, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v0, v0

    if-lt v6, v0, :cond_1

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->this$0:Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    # getter for: Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->access$000(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f040030

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 70
    .local v1, "views":Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    aget-object v2, v0, v6

    check-cast v2, Lcom/android/deskclock/worldclock/CityObj;

    const v3, 0x7f0e009b

    const v4, 0x7f0e009c

    const v5, 0x7f0e009d

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->updateView(Landroid/widget/RemoteViews;Lcom/android/deskclock/worldclock/CityObj;III)V

    .line 75
    add-int/lit8 v0, v6, 0x1

    iget-object v2, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    add-int/lit8 v2, v6, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/android/deskclock/worldclock/CityObj;

    move-object v0, p0

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->updateView(Landroid/widget/RemoteViews;Lcom/android/deskclock/worldclock/CityObj;III)V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockAdapter;->mCitiesList:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v7, v0, -0x1

    .line 85
    .local v7, "lastRow":I
    if-ne p1, v7, :cond_3

    .line 86
    const/16 v0, 0x8

    invoke-virtual {v1, v11, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 79
    .end local v7    # "lastRow":I
    :cond_2
    invoke-direct {p0, v1, v8, v9, v10}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->hideView(Landroid/widget/RemoteViews;III)V

    goto :goto_1

    .line 88
    .restart local v7    # "lastRow":I
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v11, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method
