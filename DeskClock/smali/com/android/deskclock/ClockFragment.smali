.class public Lcom/android/deskclock/ClockFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "ClockFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

.field private final mAlarmObserver:Landroid/database/ContentObserver;

.field private mAnalogClock:Landroid/view/View;

.field private mButtonsHidden:Z

.field private mClockFrame:Landroid/view/View;

.field private mClockStyle:Ljava/lang/String;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatForAccessibility:Ljava/lang/String;

.field private mDefaultClockStyle:Ljava/lang/String;

.field private mDigitalClock:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mList:Landroid/widget/ListView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mQuarterHourUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/deskclock/DeskClockFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/ClockFragment;->mButtonsHidden:Z

    .line 61
    new-instance v0, Lcom/android/deskclock/ClockFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ClockFragment$1;-><init>(Lcom/android/deskclock/ClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/deskclock/ClockFragment$2;

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/ClockFragment$2;-><init>(Lcom/android/deskclock/ClockFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 108
    new-instance v0, Lcom/android/deskclock/ClockFragment$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ClockFragment$3;-><init>(Lcom/android/deskclock/ClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mQuarterHourUpdater:Ljava/lang/Runnable;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/ClockFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ClockFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/ClockFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ClockFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/ClockFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ClockFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ClockFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/ClockFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ClockFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ClockFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/ClockFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ClockFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mQuarterHourUpdater:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const v6, 0x7f0e0017

    const/4 v7, 0x0

    .line 127
    const v4, 0x7f04000d

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, "v":Landroid/view/View;
    if-eqz p3, :cond_0

    .line 129
    const-string v4, "buttons_hidden"

    invoke-virtual {p3, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/deskclock/ClockFragment;->mButtonsHidden:Z

    .line 131
    :cond_0
    const v4, 0x7f0e0031

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    .line 132
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 134
    new-instance v1, Lcom/android/deskclock/ClockFragment$4;

    invoke-direct {v1, p0}, Lcom/android/deskclock/ClockFragment$4;-><init>(Lcom/android/deskclock/ClockFragment;)V

    .line 174
    .local v1, "longPressNightMode":Landroid/view/View$OnTouchListener;
    const v4, 0x7f0e0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    .line 175
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    if-nez v4, :cond_2

    .line 176
    const v4, 0x7f04001d

    iget-object v5, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    .line 177
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-virtual {v4, v5, v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 182
    :goto_0
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    const v4, 0x7f0e0012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, "menuButton":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p0, v2}, Lcom/android/deskclock/DeskClockFragment;->setupFakeOverflowMenuButton(Landroid/view/View;)V

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/view/View;

    .line 192
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    const v5, 0x7f0e0040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Landroid/view/View;

    .line 193
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextClock;

    check-cast v4, Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;I)V

    .line 195
    const v4, 0x7f040008

    iget-object v5, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "footerView":Landroid/view/View;
    const v4, 0x7f0b0009

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 197
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 198
    new-instance v4, Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/deskclock/worldclock/WorldClockAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    .line 199
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/ClockFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 202
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/ClockFragment;->mDefaultClockStyle:Ljava/lang/String;

    .line 203
    return-object v3

    .line 180
    .end local v0    # "footerView":Landroid/view/View;
    .end local v2    # "menuButton":Landroid/view/View;
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 254
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 255
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mQuarterHourUpdater:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/android/deskclock/Utils;->cancelQuarterHourUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 257
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 259
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 209
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 210
    const/high16 v3, 0x7f0d0000

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    .line 211
    const v3, 0x7f0d0001

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 214
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mQuarterHourUpdater:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/deskclock/Utils;->setQuarterHourUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 217
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v3, v0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->loadCitiesDb(Landroid/content/Context;)V

    .line 227
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v3, v0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->reloadData(Landroid/content/Context;)V

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/view/View;

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Landroid/view/View;

    const-string v5, "clock_style"

    invoke-static {v0, v3, v4, v5}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 232
    .local v1, "clockView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/view/View;

    if-ne v1, v3, :cond_1

    const-string v3, "digital"

    :goto_0
    iput-object v3, p0, Lcom/android/deskclock/ClockFragment;->mClockStyle:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v3}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 237
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :goto_1
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-static {v3, v4, v5}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 244
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 245
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "next_alarm_formatted"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/ClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    return-void

    .line 232
    :cond_1
    const-string v3, "analog"

    goto :goto_0

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    const-string v0, "buttons_hidden"

    iget-boolean v1, p0, Lcom/android/deskclock/ClockFragment;->mButtonsHidden:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string v0, "clock_style"

    if-ne p2, v0, :cond_0

    .line 270
    const-string v0, "clock_style"

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mDefaultClockStyle:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mClockStyle:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 273
    :cond_0
    return-void
.end method
