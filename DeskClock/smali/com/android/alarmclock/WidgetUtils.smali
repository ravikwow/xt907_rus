.class public Lcom/android/alarmclock/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHeightScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    const v9, 0x7f09007c

    const/high16 v6, 0x3f800000

    .line 74
    if-nez p1, :cond_2

    .line 75
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 76
    .local v5, "widgetManager":Landroid/appwidget/AppWidgetManager;
    if-nez v5, :cond_1

    .line 99
    .end local v5    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    :goto_0
    return v6

    .line 80
    .restart local v5    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_1
    invoke-virtual {v5, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 82
    .end local v5    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_2
    if-eqz p1, :cond_0

    .line 83
    const-string v7, "appWidgetMinHeight"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, "minHeight":I
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 89
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v0, "density":F
    const v7, 0x3faccccd

    const v8, 0x7f09003a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    mul-float v1, v7, v8

    .line 93
    .local v1, "lblBox":F
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 94
    int-to-float v7, v2

    mul-float/2addr v7, v0

    sub-float/2addr v7, v1

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v8, v1

    div-float v3, v7, v8

    .line 96
    .local v3, "ratio":F
    cmpl-float v7, v3, v6

    if-lez v7, :cond_3

    move v3, v6

    .end local v3    # "ratio":F
    :cond_3
    move v6, v3

    goto :goto_0
.end method

.method public static getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    const/high16 v6, 0x3f800000

    .line 44
    if-nez p1, :cond_2

    .line 45
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 46
    .local v5, "widgetManager":Landroid/appwidget/AppWidgetManager;
    if-nez v5, :cond_1

    .line 69
    .end local v5    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    :goto_0
    return v6

    .line 50
    .restart local v5    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_1
    invoke-virtual {v5, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 52
    .end local v5    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_2
    if-eqz p1, :cond_0

    .line 53
    const-string v7, "appWidgetMinWidth"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, "minWidth":I
    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 59
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v0, "density":F
    int-to-float v7, v2

    mul-float/2addr v7, v0

    const v8, 0x7f09007b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    div-float v3, v7, v8

    .line 62
    .local v3, "ratio":F
    const-string v7, "appWidgetMinHeight"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, "minHeight":I
    if-lez v1, :cond_3

    int-to-float v7, v1

    mul-float/2addr v7, v0

    const v8, 0x7f09007c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 65
    invoke-static {p0, p1, p2}, Lcom/android/alarmclock/WidgetUtils;->getHeightScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 67
    :cond_3
    cmpl-float v7, v3, v6

    if-lez v7, :cond_4

    move v3, v6

    .end local v3    # "ratio":F
    :cond_4
    move v6, v3

    goto :goto_0
.end method

.method public static setClockSize(Landroid/content/Context;Landroid/widget/RemoteViews;F)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clock"    # Landroid/widget/RemoteViews;
    .param p2, "scale"    # F

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 38
    .local v0, "fontSize":F
    const v1, 0x7f0e0045

    const/4 v2, 0x0

    mul-float v3, v0, p2

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 40
    return-void
.end method

.method public static setTimeFormat(Landroid/widget/RemoteViews;II)V
    .locals 2
    .param p0, "clock"    # Landroid/widget/RemoteViews;
    .param p1, "amPmFontSize"    # I
    .param p2, "clockId"    # I

    .prologue
    .line 142
    if-eqz p0, :cond_0

    .line 144
    const-string v0, "setFormat12Hour"

    invoke-static {p1}, Lcom/android/deskclock/Utils;->get12ModeFormat(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 146
    const-string v0, "setFormat24Hour"

    invoke-static {}, Lcom/android/deskclock/Utils;->get24ModeFormat()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static showList(Landroid/content/Context;IF)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "scale"    # F

    .prologue
    const/4 v8, 0x1

    .line 106
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    .line 107
    .local v7, "widgetManager":Landroid/appwidget/AppWidgetManager;
    if-nez v7, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v8

    .line 111
    :cond_1
    invoke-virtual {v7, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    .line 112
    .local v4, "options":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 117
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v8, :cond_2

    const-string v6, "appWidgetMaxHeight"

    .line 121
    .local v6, "whichHeight":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, "height":I
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v0, v9, Landroid/util/DisplayMetrics;->density:F

    .line 128
    .local v0, "density":F
    const v9, 0x3faccccd

    const v10, 0x7f09003a

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    mul-float v2, v9, v10

    .line 129
    .local v2, "lblBox":F
    const v9, 0x7f090080

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const/high16 v10, 0x40000000

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    const v10, 0x7f09007f

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    mul-float/2addr v10, p2

    add-float v3, v9, v10

    .line 132
    .local v3, "neededSize":F
    int-to-float v9, v1

    mul-float/2addr v9, v0

    cmpl-float v9, v9, v3

    if-gtz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    .line 117
    .end local v0    # "density":F
    .end local v1    # "height":I
    .end local v2    # "lblBox":F
    .end local v3    # "neededSize":F
    .end local v6    # "whichHeight":Ljava/lang/String;
    :cond_2
    const-string v6, "appWidgetMinHeight"

    goto :goto_1
.end method
