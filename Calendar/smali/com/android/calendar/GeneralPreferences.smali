.class public Lcom/android/calendar/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mTimezones:[[Ljava/lang/CharSequence;


# instance fields
.field mAlert:Landroid/preference/CheckBoxPreference;

.field mDefaultReminder:Landroid/preference/ListPreference;

.field mHideDeclined:Landroid/preference/CheckBoxPreference;

.field mHomeTZ:Landroid/preference/ListPreference;

.field mPopup:Landroid/preference/CheckBoxPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field mUseHomeTZ:Landroid/preference/CheckBoxPreference;

.field mVibrateWhen:Landroid/preference/ListPreference;

.field mWeekStart:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const-string v0, "com.android.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private migrateOldPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 286
    const-string v2, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "preferences_alerts_vibrate"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const-string v2, "preferences_alerts_vibrate"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f0c008b

    .line 291
    .local v0, "stringId":I
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    .end local v0    # "stringId":I
    :cond_0
    const-string v2, "preferences_alerts"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "preferences_alerts_type"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    const-string v2, "preferences_alerts_type"

    const-string v3, "1"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "type":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 298
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_alerts_type"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    return-void

    .line 288
    :cond_3
    const v0, 0x7f0c008c

    goto :goto_0

    .line 300
    .restart local v1    # "type":Ljava/lang/String;
    :cond_4
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 301
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 302
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 303
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 304
    :cond_5
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 306
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 307
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public static setDefaultValues(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 122
    const-string v0, "com.android.calendar_preferences"

    const v1, 0x7f060003

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 124
    return-void
.end method

.method private setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    return-void
.end method

.method private updateChildPreferences()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 331
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 135
    .local v2, "preferenceManager":Landroid/preference/PreferenceManager;
    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 136
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "com.android.calendar_preferences"

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 139
    const v8, 0x7f060003

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 142
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const-string v8, "preferences_alerts"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v8, "preferences_alerts_vibrateWhen"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    .line 144
    const-string v8, "vibrator"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 145
    .local v7, "vibrator":Landroid/os/Vibrator;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_3

    .line 146
    :cond_0
    const-string v8, "preferences_alerts_category"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 148
    .local v1, "mAlertGroup":Landroid/preference/PreferenceCategory;
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    .end local v1    # "mAlertGroup":Landroid/preference/PreferenceCategory;
    :goto_0
    const-string v8, "preferences_alerts_ringtone"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/RingtonePreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    .line 154
    const-string v8, "preferences_alerts_popup"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v8, "preferences_home_tz_enabled"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    .line 156
    const-string v8, "preferences_hide_declined"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v8, "preferences_week_start_day"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    .line 158
    const-string v8, "preferences_default_reminder"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    .line 159
    const-string v8, "preferences_home_tz"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    .line 160
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "tz":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    sget-object v8, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    if-nez v8, :cond_1

    .line 166
    new-instance v8, Lcom/android/calendar/TimezoneAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v0, v5, v9, v10}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v8}, Lcom/android/calendar/TimezoneAdapter;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v8

    sput-object v8, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    .line 169
    :cond_1
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 170
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 171
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    .line 172
    .local v6, "tzName":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 173
    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 175
    :cond_2
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    invoke-direct {p0, v4}, Lcom/android/calendar/GeneralPreferences;->migrateOldPreferences(Landroid/content/SharedPreferences;)V

    .line 179
    invoke-direct {p0}, Lcom/android/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 180
    return-void

    .line 150
    .end local v5    # "tz":Ljava/lang/String;
    .end local v6    # "tzName":Ljava/lang/CharSequence;
    :cond_3
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 208
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 240
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_2

    .line 241
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "tz":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    .end local v2    # "tz":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 244
    :cond_1
    const-string v2, "auto"

    .restart local v2    # "tz":Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v2    # "tz":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_3

    .line 249
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 250
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 251
    .local v0, "act":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "vnd.android.data/update"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 255
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_4

    move-object v2, p2

    .line 256
    check-cast v2, Ljava/lang/String;

    .line 258
    .restart local v2    # "tz":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    .end local v2    # "tz":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 261
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_5

    .line 262
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 264
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 265
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 266
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 267
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    if-eq p1, v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 271
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 337
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "key":Ljava/lang/String;
    const-string v3, "preferences_clear_search_history"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 342
    .local v1, "suggestions":Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v1}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 343
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c007b

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 347
    .end local v1    # "suggestions":Landroid/provider/SearchRecentSuggestions;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 185
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 187
    invoke-direct {p0, p0}, Lcom/android/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 216
    const-string v1, "preferences_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 218
    if-eqz v0, :cond_0

    .line 219
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 220
    const-class v2, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const-string v2, "removeOldReminders"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    :cond_0
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 232
    :cond_1
    return-void

    .line 224
    :cond_2
    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
