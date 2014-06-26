.class public Lcom/android/deskclock/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    }
.end annotation


# static fields
.field private static mTimezones:[[Ljava/lang/CharSequence;


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SettingsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/deskclock/SettingsActivity;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/deskclock/SettingsActivity;->mTime:J

    return-wide v0
.end method

.method private notifyHomeTimeZoneChanged()V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.worldclock.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method private refresh()V
    .locals 6

    .prologue
    .line 203
    const-string v5, "auto_silence"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 204
    .local v1, "listPref":Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "delay":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    const-string v5, "clock_style"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "listPref":Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 209
    .restart local v1    # "listPref":Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    const-string v5, "automatic_home_clock"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .local v2, "pref":Landroid/preference/Preference;
    move-object v5, v2

    .line 213
    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    .line 214
    .local v4, "state":Z
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    const-string v5, "home_time_zone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "listPref":Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 217
    .restart local v1    # "listPref":Landroid/preference/ListPreference;
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 218
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    const-string v5, "volume_button_setting"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "listPref":Landroid/preference/ListPreference;
    check-cast v1, Landroid/preference/ListPreference;

    .line 221
    .restart local v1    # "listPref":Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    const-string v5, "snooze_duration"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/SnoozeLengthDialog;

    .line 225
    .local v3, "snoozePref":Lcom/android/deskclock/SnoozeLengthDialog;
    invoke-virtual {v3}, Lcom/android/deskclock/SnoozeLengthDialog;->setSummary()V

    .line 226
    return-void
.end method

.method private updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 5
    .param p1, "listPref"    # Landroid/preference/ListPreference;
    .param p2, "delay"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 190
    const v1, 0x7f0d002f

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const v1, 0x7f0d002e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .locals 13

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 283
    .local v6, "resources":Landroid/content/res/Resources;
    const v10, 0x7f0a0016

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "ids":[Ljava/lang/String;
    const v10, 0x7f0a0015

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "labels":[Ljava/lang/String;
    array-length v5, v3

    .line 286
    .local v5, "minLength":I
    array-length v10, v3

    array-length v11, v4

    if-eq v10, v11, :cond_0

    .line 287
    array-length v10, v4

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 288
    const-string v10, "Timezone ids and labels have different length!"

    invoke-static {v10}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 290
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v9, "timezones":Ljava/util/List;, "Ljava/util/List<Lcom/android/deskclock/SettingsActivity$TimeZoneRow;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 292
    new-instance v10, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;

    aget-object v11, v3, v0

    aget-object v12, v4, v0

    invoke-direct {v10, p0, v11, v12}, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;-><init>(Lcom/android/deskclock/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 296
    const/4 v10, 0x2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    filled-new-array {v10, v11}, [I

    move-result-object v10

    const-class v11, Ljava/lang/CharSequence;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/CharSequence;

    .line 297
    .local v8, "timeZones":[[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 298
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;

    .line 299
    .local v7, "row":Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    iget-object v11, v7, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mId:Ljava/lang/String;

    aput-object v11, v10, v0

    .line 300
    const/4 v10, 0x1

    aget-object v10, v8, v10

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v11, v7, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mDisplayName:Ljava/lang/String;

    aput-object v11, v10, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 302
    .end local v7    # "row":Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
    :cond_2
    return-object v8
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x4

    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v2, 0x7f060004

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 86
    :cond_0
    const-string v2, "home_time_zone"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 87
    .local v1, "listPref":Landroid/preference/ListPreference;
    sget-object v2, Lcom/android/deskclock/SettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/SettingsActivity;->mTime:J

    .line 89
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/deskclock/SettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    .line 92
    :cond_1
    sget-object v2, Lcom/android/deskclock/SettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 93
    sget-object v2, Lcom/android/deskclock/SettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 120
    const v1, 0x7f0e00a7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 121
    .local v0, "help":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 154
    const-string v5, "auto_silence"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, p1

    .line 155
    check-cast v3, Landroid/preference/ListPreference;

    .local v3, "listPref":Landroid/preference/ListPreference;
    move-object v0, p2

    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "delay":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 177
    .end local v0    # "delay":Ljava/lang/String;
    .end local v3    # "listPref":Landroid/preference/ListPreference;
    .end local p1    # "pref":Landroid/preference/Preference;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 158
    .restart local p1    # "pref":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v5, "clock_style"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 159
    check-cast v3, Landroid/preference/ListPreference;

    .line 160
    .restart local v3    # "listPref":Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 161
    .local v2, "idx":I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    .end local v2    # "idx":I
    .end local v3    # "listPref":Landroid/preference/ListPreference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v5, "home_time_zone"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 163
    check-cast v3, Landroid/preference/ListPreference;

    .line 164
    .restart local v3    # "listPref":Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 165
    .restart local v2    # "idx":I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->notifyHomeTimeZoneChanged()V

    goto :goto_0

    .line 167
    .end local v2    # "idx":I
    .end local v3    # "listPref":Landroid/preference/ListPreference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v5, "automatic_home_clock"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    .line 169
    .local v4, "state":Z
    const-string v5, "home_time_zone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 170
    .local v1, "homeTimeZone":Landroid/preference/Preference;
    if-nez v4, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 171
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->notifyHomeTimeZoneChanged()V

    goto :goto_0

    .line 170
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 172
    .end local v1    # "homeTimeZone":Landroid/preference/Preference;
    .end local v4    # "state":Z
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_5
    const-string v5, "volume_button_setting"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 173
    check-cast v3, Landroid/preference/ListPreference;

    .line 174
    .restart local v3    # "listPref":Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 175
    .restart local v2    # "idx":I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 130
    const-string v2, "alarm_in_silent_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 131
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 132
    .local v0, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_streams_affected"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, "ringerModeStreamTypes":I
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    and-int/lit8 v1, v1, -0x11

    .line 142
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_streams_affected"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    const/4 v2, 0x1

    .line 149
    .end local v0    # "pref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "ringerModeStreamTypes":I
    :goto_1
    return v2

    .line 139
    .restart local v0    # "pref":Landroid/preference/CheckBoxPreference;
    .restart local v1    # "ringerModeStreamTypes":I
    :cond_0
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 149
    .end local v0    # "pref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "ringerModeStreamTypes":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->refresh()V

    .line 102
    return-void
.end method
