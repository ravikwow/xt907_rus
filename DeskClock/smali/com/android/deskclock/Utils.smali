.class public Lcom/android/deskclock/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;
    }
.end annotation


# static fields
.field private static sCachedVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method public static calculateRadiusOffset(FFF)F
    .locals 1
    .param p0, "strokeSize"    # F
    .param p1, "dotStrokeSize"    # F
    .param p2, "markerStrokeSize"    # F

    .prologue
    .line 161
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static calculateRadiusOffset(Landroid/content/res/Resources;)F
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 169
    if-eqz p0, :cond_0

    .line 170
    const v3, 0x7f090035

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 171
    .local v2, "strokeSize":F
    const v3, 0x7f090034

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 172
    .local v0, "dotStrokeSize":F
    const v3, 0x7f090036

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 173
    .local v1, "markerStrokeSize":F
    invoke-static {v2, v0, v1}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(FFF)F

    move-result v3

    .line 175
    .end local v0    # "dotStrokeSize":F
    .end local v1    # "markerStrokeSize":F
    .end local v2    # "strokeSize":F
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static cancelMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 386
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static cancelQuarterHourUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 410
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static cancelTimesUpNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, "timerIntent":Landroid/content/Intent;
    const-string v1, "notif_times_up_cancel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method public static clearSwSharedPref(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 197
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "sw_start_time"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    const-string v4, "sw_accum_time"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    const-string v4, "sw_state"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v4, "sw_lap_num"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 202
    .local v3, "lapNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sw_lap_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "sw_lap_num"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method

.method public static dimClockView(ZLandroid/view/View;)V
    .locals 4
    .param p0, "dim"    # Z
    .param p1, "clockView"    # Landroid/view/View;

    .prologue
    .line 443
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 444
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p0, :cond_0

    const v1, 0x40ffffff

    :goto_0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 448
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 449
    return-void

    .line 445
    :cond_0
    const v1, -0x3f000001

    goto :goto_0
.end method

.method public static get12ModeFormat(I)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "amPmFontSize"    # I

    .prologue
    const/16 v6, 0x21

    .line 507
    const-string v2, "hma"

    .line 508
    .local v2, "skeleton":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "pattern":Ljava/lang/String;
    if-gtz p0, :cond_0

    .line 511
    const-string v4, "a"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 514
    :cond_0
    const-string v4, " "

    const-string v5, "\u200a"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    const/16 v4, 0x61

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 517
    .local v0, "amPmPos":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 527
    .end local v1    # "pattern":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 520
    .restart local v1    # "pattern":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 521
    .local v3, "sp":Landroid/text/Spannable;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 523
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, p0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 525
    new-instance v4, Landroid/text/style/TypefaceSpan;

    const-string v5, "sans-serif-condensed"

    invoke-direct {v4, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object v1, v3

    .line 527
    goto :goto_0
.end method

.method public static get24ModeFormat()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 531
    const-string v0, "Hm"

    .line 532
    .local v0, "skeleton":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAlarmOnQuarterHour()J
    .locals 13

    .prologue
    const-wide/32 v11, 0xdbf88

    const/16 v10, 0xc

    .line 352
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 354
    .local v5, "nextQuarter":Ljava/util/Calendar;
    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 355
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 356
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 357
    .local v4, "minute":I
    rem-int/lit8 v8, v4, 0xf

    rsub-int/lit8 v8, v8, 0xf

    invoke-virtual {v5, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 358
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 359
    .local v0, "alarmOnQuarterHour":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 360
    .local v6, "now":J
    sub-long v2, v0, v6

    .line 361
    .local v2, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v2

    if-gez v8, :cond_0

    cmp-long v8, v2, v11

    if-lez v8, :cond_1

    .line 364
    :cond_0
    add-long v0, v6, v11

    .line 366
    :cond_1
    return-wide v0
.end method

.method public static getCityName(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)Ljava/lang/String;
    .locals 1
    .param p0, "city"    # Lcom/android/deskclock/worldclock/CityObj;
    .param p1, "dbCity"    # Lcom/android/deskclock/worldclock/CityObj;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getGMTHourOffset(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 7
    .param p0, "timezone"    # Ljava/util/TimeZone;
    .param p1, "showMinutes"    # Z

    .prologue
    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 561
    .local v0, "gmtOffset":I
    if-gez v0, :cond_2

    .line 562
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x36ee80

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 568
    if-eqz p1, :cond_1

    .line 569
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    rem-int/lit8 v1, v3, 0x3c

    .line 570
    .local v1, "min":I
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 572
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    .end local v1    # "min":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 564
    :cond_2
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getGrayColorId()I
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0b0018

    return v0
.end method

.method public static getPressedColorId()I
    .locals 1

    .prologue
    .line 183
    const v0, 0x7f0b0016

    return v0
.end method

.method public static getTimeNow()J
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isKitKatOrLater()Z
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadCitiesFromXml(Landroid/content/Context;)[Lcom/android/deskclock/worldclock/CityObj;
    .locals 11
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 539
    .local v4, "r":Landroid/content/res/Resources;
    const/high16 v7, 0x7f0a0000

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "cities":[Ljava/lang/String;
    const v7, 0x7f0a0001

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 541
    .local v6, "timezones":[Ljava/lang/String;
    const v7, 0x7f0a0002

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "ids":[Ljava/lang/String;
    array-length v3, v0

    .line 543
    .local v3, "minLength":I
    array-length v7, v0

    array-length v8, v6

    if-ne v7, v8, :cond_0

    array-length v7, v2

    array-length v8, v0

    if-eq v7, v8, :cond_1

    .line 544
    :cond_0
    array-length v7, v0

    array-length v8, v6

    array-length v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 545
    const-string v7, "City lists sizes are not the same, trancating"

    invoke-static {v7}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 547
    :cond_1
    new-array v5, v3, [Lcom/android/deskclock/worldclock/CityObj;

    .line 548
    .local v5, "tempList":[Lcom/android/deskclock/worldclock/CityObj;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_2

    .line 549
    new-instance v7, Lcom/android/deskclock/worldclock/CityObj;

    aget-object v8, v0, v1

    aget-object v9, v6, v1

    aget-object v10, v2, v1

    invoke-direct {v7, v8, v9, v10}, Lcom/android/deskclock/worldclock/CityObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v1

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_2
    return-object v5
.end method

.method public static prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helpMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "helpUrlString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/deskclock/Utils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, "fullUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 112
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 113
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static refreshAlarm(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clock"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "next_alarm_formatted"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "nextAlarm":Ljava/lang/String;
    const v2, 0x7f0e0042

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 457
    .local v1, "nextAlarmView":Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 458
    const v2, 0x7f0d0049

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0097

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setClockStyle(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "digitalClock"    # Landroid/view/View;
    .param p2, "analogClock"    # Landroid/view/View;
    .param p3, "clockStyleKey"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 422
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 423
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "defaultClockStyle":Ljava/lang/String;
    invoke-interface {v2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "style":Ljava/lang/String;
    const-string v4, "analog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 428
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 429
    move-object v1, p2

    .line 436
    .local v1, "returnView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 431
    .end local v1    # "returnView":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 433
    move-object v1, p1

    .restart local v1    # "returnView":Landroid/view/View;
    goto :goto_0
.end method

.method public static setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 372
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "timezone":Ljava/lang/String;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez v5, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 377
    .local v0, "now":J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 378
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 379
    iget v6, v4, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v6, v6, 0x18

    mul-int/lit16 v6, v6, 0xe10

    iget v7, v4, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v7, v7, 0x3c

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/format/Time;->second:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v2, v6

    .line 380
    .local v2, "runInMillis":J
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setQuarterHourUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 395
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "timezone":Ljava/lang/String;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-static {}, Lcom/android/deskclock/Utils;->getAlarmOnQuarterHour()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 401
    .local v0, "runInMillis":J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 402
    const-wide/16 v0, 0x3e8

    .line 404
    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setTimeFormat(Landroid/widget/TextClock;I)V
    .locals 1
    .param p0, "clock"    # Landroid/widget/TextClock;
    .param p1, "amPmFontSize"    # I

    .prologue
    .line 495
    if-eqz p0, :cond_0

    .line 497
    invoke-static {p1}, Lcom/android/deskclock/Utils;->get12ModeFormat(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 499
    invoke-static {}, Lcom/android/deskclock/Utils;->get24ModeFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 501
    :cond_0
    return-void
.end method

.method public static showInUseNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, "timerIntent":Landroid/content/Intent;
    const-string v1, "notif_in_use_show"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public static showTimesUpNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, "timerIntent":Landroid/content/Intent;
    const-string v1, "notif_times_up_show"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public static updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p0, "dateFormat"    # Ljava/lang/String;
    .param p1, "dateFormatForAccessibility"    # Ljava/lang/String;
    .param p2, "clock"    # Landroid/view/View;

    .prologue
    .line 472
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 474
    .local v3, "now":Ljava/util/Date;
    const v5, 0x7f0e0041

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 475
    .local v0, "dateDisplay":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 477
    .local v2, "l":Ljava/util/Locale;
    invoke-static {v2, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "fmt":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 479
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 481
    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    new-instance v4, Ljava/text/SimpleDateFormat;

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {v4, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 483
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 485
    .end local v1    # "fmt":Ljava/lang/String;
    .end local v2    # "l":Ljava/util/Locale;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method

.method private static uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    sget-object v3, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 134
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    .line 137
    const-string v3, "version"

    sget-object v4, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 138
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package name for context "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "version"

    sget-object v4, Lcom/android/deskclock/Utils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method
