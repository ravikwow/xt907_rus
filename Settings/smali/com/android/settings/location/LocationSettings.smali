.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 70
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 196
    const-string v4, "location_services"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 198
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v2, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v2, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 199
    .local v2, "injector":Lcom/android/settings/location/SettingsInjector;
    invoke-virtual {v2}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v3

    .line 201
    .local v3, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v4, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/location/SettingsInjector;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v4, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 217
    invoke-direct {p0, v3, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 102
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 104
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 18

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 108
    .local v5, "activity":Landroid/preference/PreferenceActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 109
    .local v11, "root":Landroid/preference/PreferenceScreen;
    if-eqz v11, :cond_0

    .line 110
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 112
    :cond_0
    const v12, 0x7f05001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "GPS_ENABLED":I
    const/4 v1, 0x1

    .line 119
    .local v1, "GPS_DISABLED":I
    const/4 v3, 0x2

    .line 120
    .local v3, "GPS_FORCED":I
    const-string v4, "persist.sprint.dm.gps.status"

    .line 121
    .local v4, "GPS_STATE_KEY":Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 123
    .local v7, "mGpsDMStatus":I
    const-string v12, "location_mode"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v13, Lcom/android/settings/location/LocationSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 136
    const-string v12, "recent_location_requests"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 138
    new-instance v9, Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {v9, v5}, Lcom/android/settings/location/RecentLocationApps;-><init>(Landroid/preference/PreferenceActivity;)V

    .line 139
    .local v9, "recentApps":Lcom/android/settings/location/RecentLocationApps;
    invoke-virtual {v9}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v10

    .line 140
    .local v10, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 151
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 155
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v12

    if-nez v12, :cond_2

    .line 156
    :cond_1
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 158
    .local v8, "padding":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v8, v15}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 159
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    const/16 v13, 0x10

    const/16 v14, 0x10

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 161
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v14, Landroid/app/ActionBar$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const v17, 0x800015

    invoke-direct/range {v14 .. v17}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 167
    .end local v8    # "padding":I
    :cond_2
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode()V

    .line 171
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.motorola.extensions.settings.DYNAMIC_LOCATION_SETTINGS_PREFERENCES"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/motorola/extensions/DynamicPreferences;->addOrOverridePreferences(Landroid/preference/PreferenceScreen;Landroid/content/Intent;)V

    .line 176
    if-eq v7, v1, :cond_3

    if-ne v7, v3, :cond_4

    .line 177
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    :cond_4
    return-object v11

    .line 144
    :cond_5
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 145
    .local v6, "banner":Landroid/preference/Preference;
    const v12, 0x7f040046

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 146
    const v12, 0x7f0b050b

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 147
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private static handleLocationSwitchChanged(Landroid/content/Context;Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-static {p0}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    const-string v2, "LocationUtils"

    const-string v3, "handleLocationSwitchChanged"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Boolean;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 302
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 308
    :goto_0
    return v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const-string v0, "LocationSettings"

    const-string v2, "Exception while getting LocationUtils.handleLocationSwitchChanged"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 308
    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 226
    const v0, 0x7f0b08f1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/location/LocationSettings;->handleLocationSwitchChanged(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 278
    :cond_0
    if-eqz p2, :cond_1

    .line 279
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onModeChanged(IZ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    .line 252
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 253
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 258
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 262
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    :cond_1
    return-void

    .line 233
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0509

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0508

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0507

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0506

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 251
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_3
    move v3, v2

    .line 252
    goto :goto_2

    :cond_4
    move v1, v2

    .line 253
    goto :goto_3

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 90
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 75
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 76
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 78
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 79
    return-void
.end method
