.class public Lcom/android/deskclock/DeskClock;
.super Landroid/app/Activity;
.source "DeskClock.java"

# interfaces
.implements Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;
.implements Lcom/android/deskclock/LabelDialogFragment$TimerLabelDialogHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DeskClock$OnTapListener;,
        Lcom/android/deskclock/DeskClock$TabsAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAlarmTab:Landroid/app/ActionBar$Tab;

.field private mClockTab:Landroid/app/ActionBar$Tab;

.field private mMenu:Landroid/view/Menu;

.field private mSelectedTab:I

.field private mStopwatchTab:Landroid/app/ActionBar$Tab;

.field private mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

.field private mTimerTab:Landroid/app/ActionBar$Tab;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 502
    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/DeskClock;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method private createTabs(I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    .line 131
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 133
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 135
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mAlarmTab:Landroid/app/ActionBar$Tab;

    .line 136
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mAlarmTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 137
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mAlarmTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 138
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mAlarmTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 140
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    .line 141
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 142
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d004c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 143
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mClockTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/ClockFragment;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 145
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    .line 146
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 147
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d004b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 148
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mTimerTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 150
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    .line 151
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 152
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 153
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mStopwatchTab:Landroid/app/ActionBar$Tab;

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchFragment;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/DeskClock$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 155
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 156
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->notifySelectedPage(I)V

    .line 158
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0e003e

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 120
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 121
    new-instance v0, Lcom/android/deskclock/DeskClock$TabsAdapter;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/deskclock/DeskClock$TabsAdapter;-><init>(Lcom/android/deskclock/DeskClock;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    .line 122
    iget v0, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClock;->createTabs(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 126
    return-void
.end method

.method private processMenuClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 292
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0

    .line 305
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00a6 -> :sswitch_0
        0x7f0e00a7 -> :sswitch_1
        0x7f0e00ac -> :sswitch_2
    .end sparse-switch
.end method

.method private setHomeTimeZone()V
    .locals 6

    .prologue
    .line 316
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 317
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "home_time_zone"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "homeTimeZone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 323
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "home_time_zone"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    const-string v3, "DeskClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting home time zone to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 266
    const v2, 0x7f0e00a7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    .local v0, "help":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 268
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 272
    :cond_0
    const v2, 0x7f0e00ac

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 273
    .local v1, "nightMode":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    if-nez v2, :cond_2

    .line 274
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 276
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public clockButtonsOnClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x7f0e0032
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    iput v4, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const-string v2, "selected_tab"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 171
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 172
    const-string v2, "deskclock.select.tab"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 173
    .local v1, "tab":I
    if-eq v1, v3, :cond_1

    .line 174
    iput v1, p0, Lcom/android/deskclock/DeskClock;->mSelectedTab:I

    .line 177
    .end local v1    # "tab":I
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 178
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->setHomeTimeZone()V

    .line 182
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 242
    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mMenu:Landroid/view/Menu;

    .line 243
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 244
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 248
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 255
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialogLabelSet(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 581
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/deskclock/AlarmClockFragment;

    if-eqz v1, :cond_0

    .line 582
    check-cast v0, Lcom/android/deskclock/AlarmClockFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->setLabel(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;)V

    .line 584
    :cond_0
    return-void
.end method

.method public onDialogLabelSet(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "timer"    # Lcom/android/deskclock/timer/TimerObj;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 572
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/deskclock/timer/TimerFragment;

    if-eqz v1, :cond_0

    .line 573
    check-cast v0, Lcom/android/deskclock/timer/TimerFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment;->setLabel(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 575
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 107
    const-string v1, "deskclock.select.tab"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "tab":I
    if-eq v0, v2, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock;->processMenuClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    const-string v1, "show_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 211
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    const-string v1, "notif_app_open"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    invoke-static {p0}, Lcom/android/deskclock/Utils;->showInUseNotifications(Landroid/content/Context;)V

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 218
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock;->updateMenu(Landroid/view/Menu;)V

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const-string v1, "kill_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 196
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    const-string v1, "notif_app_open"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    const-string v1, "notif_in_use_cancel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    const-string v0, "selected_tab"

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    return-void
.end method

.method public registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 1
    .param p1, "frag"    # Lcom/android/deskclock/DeskClockFragment;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 332
    :cond_0
    return-void
.end method

.method public unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 1
    .param p1, "frag"    # Lcom/android/deskclock/DeskClockFragment;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabsAdapter:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 338
    :cond_0
    return-void
.end method
