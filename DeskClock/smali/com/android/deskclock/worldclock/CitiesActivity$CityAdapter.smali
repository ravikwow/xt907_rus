.class Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CitiesActivity.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/worldclock/CitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;
    }
.end annotation


# instance fields
.field private mCities:[Lcom/android/deskclock/worldclock/CityObj;

.field private mCityNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedCitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/deskclock/worldclock/CityObj;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIs24HoursMode:Z

.field private final mLayoutDirection:I

.field private final mPattern12:Ljava/lang/String;

.field private final mPattern24:Ljava/lang/String;

.field private mSectionHeaders:[Ljava/lang/String;

.field private mSectionPositions:[Ljava/lang/Integer;

.field private mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;

.field private mSelectedEndPosition:I

.field private mSortByNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;

.field private mSortByTimeComparator:Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;

.field final synthetic this$0:Lcom/android/deskclock/worldclock/CitiesActivity;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/worldclock/CitiesActivity;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "factory"    # Landroid/view/LayoutInflater;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    .line 233
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCityNameMap:Ljava/util/HashMap;

    .line 127
    new-instance v7, Lcom/android/deskclock/worldclock/CityNameComparator;

    invoke-direct {v7}, Lcom/android/deskclock/worldclock/CityNameComparator;-><init>()V

    iput-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSortByNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;

    .line 128
    new-instance v7, Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;

    invoke-direct {v7}, Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;-><init>()V

    iput-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSortByTimeComparator:Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;

    .line 136
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedEndPosition:I

    .line 138
    new-instance v7, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;

    invoke-direct {v7, p0}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;-><init>(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)V

    iput-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mFilter:Landroid/widget/Filter;

    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    # setter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1, v7}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1002(Lcom/android/deskclock/worldclock/CitiesActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 235
    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1000(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/Calendar;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    iput v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mLayoutDirection:I

    .line 237
    iput-object p3, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 240
    invoke-static {p2}, Lcom/android/deskclock/Utils;->loadCitiesFromXml(Landroid/content/Context;)[Lcom/android/deskclock/worldclock/CityObj;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCities:[Lcom/android/deskclock/worldclock/CityObj;

    .line 244
    iget-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCityNameMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 245
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCities:[Lcom/android/deskclock/worldclock/CityObj;

    .local v0, "arr$":[Lcom/android/deskclock/worldclock/CityObj;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 246
    .local v1, "city":Lcom/android/deskclock/worldclock/CityObj;
    iget-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCityNameMap:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "city":Lcom/android/deskclock/worldclock/CityObj;
    :cond_0
    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1100(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 251
    .local v6, "selectedCities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/deskclock/worldclock/CityObj;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/deskclock/worldclock/CityObj;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/deskclock/worldclock/CityObj;

    iput-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;

    .line 256
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 257
    .restart local v1    # "city":Lcom/android/deskclock/worldclock/CityObj;
    iget-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCityNameMap:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 258
    .local v4, "newCityName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 259
    iput-object v4, v1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    .line 256
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    .end local v1    # "city":Lcom/android/deskclock/worldclock/CityObj;
    .end local v4    # "newCityName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "Hm"

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mPattern24:Ljava/lang/String;

    .line 268
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "hma"

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "pattern12":Ljava/lang/String;
    iget v7, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mLayoutDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 270
    const-string v7, "h"

    const-string v8, "hh"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    :cond_3
    iput-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mPattern12:Ljava/lang/String;

    .line 274
    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I
    invoke-static {p1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$400(Lcom/android/deskclock/worldclock/CitiesActivity;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->sortCities(I)V

    .line 275
    invoke-virtual {p0, p2}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->set24HoursMode(Landroid/content/Context;)V

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)[Lcom/android/deskclock/worldclock/CityObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedEndPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)[Lcom/android/deskclock/worldclock/CityObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCities:[Lcom/android/deskclock/worldclock/CityObj;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;[Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    .param p1, "x1"    # [Ljava/lang/Integer;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    return-object p1
.end method

.method private getTimeCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1000(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 391
    iget-boolean v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mIs24HoursMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mPattern24:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1000(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mPattern12:Ljava/lang/String;

    goto :goto_0
.end method

.method private isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 452
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sortCities(I)V
    .locals 2
    .param p1, "sortType"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # setter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I
    invoke-static {v0, p1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$402(Lcom/android/deskclock/worldclock/CitiesActivity;I)I

    .line 294
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCities:[Lcom/android/deskclock/worldclock/CityObj;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSortByNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;

    :goto_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 296
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSortByNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;

    :goto_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1200(Lcom/android/deskclock/worldclock/CitiesActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sort_preference"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mFilter:Landroid/widget/Filter;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1300(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 302
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSortByTimeComparator:Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSortByTimeComparator:Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "p"    # I

    .prologue
    .line 319
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "p"    # I

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Integer;

    .line 427
    .local v1, "positions":[Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 429
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 438
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 428
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 435
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 438
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    if-eqz v3, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lt p1, v3, :cond_1

    .line 386
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 333
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    .line 335
    .local v0, "c":Lcom/android/deskclock/worldclock/CityObj;
    iget-object v2, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 336
    if-nez p2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 338
    const v2, 0x7f0e002b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 340
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I
    invoke-static {v3}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$400(Lcom/android/deskclock/worldclock/CitiesActivity;)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object v2, p2

    .line 386
    goto :goto_0

    .line 340
    :cond_3
    iget-object v3, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    goto :goto_1

    .line 344
    :cond_4
    if-nez p2, :cond_5

    .line 345
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 346
    new-instance v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;-><init>(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;Lcom/android/deskclock/worldclock/CitiesActivity$1;)V

    .line 347
    .local v1, "holder":Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;
    const v2, 0x7f0e002e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->name:Landroid/widget/TextView;

    .line 348
    const v2, 0x7f0e002f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->time:Landroid/widget/TextView;

    .line 349
    const v2, 0x7f0e002c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selected:Landroid/widget/CheckBox;

    .line 350
    const v2, 0x7f0e002d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selectedPin:Landroid/widget/ImageView;

    .line 351
    const v2, 0x7f0e0030

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->remove:Landroid/widget/ImageView;

    .line 352
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->remove:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$2;

    invoke-direct {v3, p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$2;-><init>(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 364
    .end local v1    # "holder":Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;
    :cond_5
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;

    .line 367
    .restart local v1    # "holder":Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;
    iget v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedEndPosition:I

    if-ge p1, v2, :cond_6

    .line 368
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selected:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->time:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->remove:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selectedPin:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 380
    :goto_3
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selected:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 381
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selected:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1100(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 382
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selected:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 383
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 384
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->time:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->getTimeCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 329
    .end local v0    # "c":Lcom/android/deskclock/worldclock/CityObj;
    .end local v1    # "holder":Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 374
    .restart local v0    # "c":Lcom/android/deskclock/worldclock/CityObj;
    .restart local v1    # "holder":Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;
    :cond_6
    :try_start_2
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selected:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->time:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->remove:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v2, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selectedPin:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "p"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshSelectedCities()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1100(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 280
    .local v0, "selectedCities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/deskclock/worldclock/CityObj;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/deskclock/worldclock/CityObj;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/deskclock/worldclock/CityObj;

    iput-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;

    .line 281
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I
    invoke-static {v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$400(Lcom/android/deskclock/worldclock/CitiesActivity;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->sortCities(I)V

    .line 282
    return-void
.end method

.method public set24HoursMode(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 414
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mIs24HoursMode:Z

    .line 415
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 416
    return-void
.end method

.method public toggleSort()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I
    invoke-static {v0}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$400(Lcom/android/deskclock/worldclock/CitiesActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->sortCities(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->sortCities(I)V

    goto :goto_0
.end method
