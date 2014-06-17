.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mClearHistoryPref:Landroid/preference/Preference;

.field private mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mIsSmsEnabled:Z

.field private mManageSimPref:Landroid/preference/Preference;

.field private mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReportPref:Landroid/preference/Preference;

.field private mMmsEnableSignaturePref:Landroid/preference/CheckBoxPreference;

.field private mMmsGroupMmsPref:Landroid/preference/Preference;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsMessageSignaturePref:Landroid/preference/EditTextPreference;

.field private mMmsPrefCategory:Landroid/preference/PreferenceCategory;

.field private mMmsReadReportPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

.field private mRingtonePref:Landroid/preference/RingtonePreference;

.field private mSmsDeliveryReportPref:Landroid/preference/Preference;

.field private mSmsDisabledPref:Landroid/preference/Preference;

.field private mSmsEnabledPref:Landroid/preference/Preference;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsPrefCategory:Landroid/preference/PreferenceCategory;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mStoragePrefCategory:Landroid/preference/PreferenceCategory;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 394
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 402
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method public static enableNotifications(ZLandroid/content/Context;)V
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 446
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_enable_notifications"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 448
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 449
    return-void
.end method

.method public static getIsGroupMmsEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 469
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 470
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_key_mms_group_mms"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 472
    .local v0, "groupMmsPrefOn":Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getIsLocationVCardEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 485
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "pref_key_location_card"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 436
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 438
    .local v0, "notificationsEnabled":Z
    return v0
.end method

.method private loadPrefs()V
    .locals 1

    .prologue
    .line 165
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 167
    const-string v0, "pref_key_sms_disabled"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    .line 168
    const-string v0, "pref_key_sms_enabled"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    .line 170
    const-string v0, "pref_key_storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStoragePrefCategory:Landroid/preference/PreferenceCategory;

    .line 171
    const-string v0, "pref_key_sms_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    .line 172
    const-string v0, "pref_key_mms_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    .line 173
    const-string v0, "pref_key_notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

    .line 176
    const-string v0, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 177
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 178
    const-string v0, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    .line 179
    const-string v0, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    .line 180
    const-string v0, "pref_key_mms_group_mms"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsGroupMmsPref:Landroid/preference/Preference;

    .line 181
    const-string v0, "pref_key_mms_read_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    .line 182
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 183
    const-string v0, "pref_key_mms_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    .line 184
    const-string v0, "pref_key_enable_notifications"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 185
    const-string v0, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    .line 186
    const-string v0, "pref_key_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 187
    const-string v0, "pref_key_ringtone"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    .line 188
    const-string v0, "pref_key_enable_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableSignaturePref:Landroid/preference/CheckBoxPreference;

    .line 189
    const-string v0, "pref_key_message_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMessageSignaturePref:Landroid/preference/EditTextPreference;

    .line 192
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessagePreferences()V

    .line 193
    return-void
.end method

.method private registerListeners()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, p0}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 1

    .prologue
    .line 196
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 198
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->loadPrefs()V

    .line 199
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSmsEnabledState()V

    .line 208
    return-void
.end method

.method private setEnabledNotificationsPref()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    return-void
.end method

.method private setMessagePreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 211
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_0

    .line 213
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 217
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 225
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStoragePrefCategory:Landroid/preference/PreferenceCategory;

    const-string v9, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setEnabledNotificationsPref()V

    .line 258
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 259
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "pref_key_vibrateWhen"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 260
    const-string v8, "pref_key_vibrateWhen"

    invoke-interface {v3, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "vibrateWhen":Ljava/lang/String;
    const-string v8, "always"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 263
    .local v6, "vibrate":Z
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 264
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "pref_key_vibrate"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v8, "pref_key_vibrateWhen"

    invoke-interface {v2, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 270
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "vibrate":Z
    .end local v7    # "vibrateWhen":Ljava/lang/String;
    :cond_3
    const-string v8, "pref_key_vibe_pattern"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/VibrationPatternPreference;

    .line 272
    .local v5, "vibePref":Landroid/preference/VibrationPatternPreference;
    if-eqz v5, :cond_4

    .line 273
    invoke-static {p0}, Landroid/media/VibrationPatternManager;->areDistinctivePatternsAvailable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 274
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

    const-string v9, "pref_key_vibe_pattern"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 284
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 287
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 288
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 290
    const-string v8, "pref_key_ringtone"

    invoke-interface {v3, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "soundValue":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRingtoneSummary(Ljava/lang/String;)V

    .line 292
    return-void

    .line 229
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "soundValue":Ljava/lang/String;
    .end local v5    # "vibePref":Landroid/preference/VibrationPatternPreference;
    :cond_5
    const-string v8, "pref_key_mms_settings"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 230
    .local v0, "mmsOptions":Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v8

    if-nez v8, :cond_6

    .line 231
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 234
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMmsSignatureEnable()Z

    move-result v8

    if-nez v8, :cond_8

    .line 237
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableSignaturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMessageSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 243
    :cond_9
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsGroupMmsPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->isLocationAppAvailable()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getIsLocationVCardMandatory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 248
    :cond_b
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    const-string v10, "pref_key_location_card"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 276
    .end local v0    # "mmsOptions":Landroid/preference/PreferenceCategory;
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v5    # "vibePref":Landroid/preference/VibrationPatternPreference;
    :cond_c
    const-string v8, "pref_key_vibe_pattern"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultVibrationPatternId()I

    move-result v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, "patternId":I
    invoke-virtual {v5, v1}, Landroid/preference/VibrationPatternPreference;->setPattern(I)V

    goto/16 :goto_1
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0a0087

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method

.method private setRingtoneSummary(Ljava/lang/String;)V
    .locals 5
    .param p1, "soundValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 296
    .local v0, "soundUri":Landroid/net/Uri;
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 297
    .local v1, "tone":Landroid/media/Ringtone;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    return-void

    .line 295
    .end local v0    # "soundUri":Landroid/net/Uri;
    .end local v1    # "tone":Landroid/media/Ringtone;
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 297
    .restart local v0    # "soundUri":Landroid/net/Uri;
    .restart local v1    # "tone":Landroid/media/Ringtone;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0095

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0a0087

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method

.method private startMmsDownload()V
    .locals 4

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 392
    return-void
.end method

.method private updateSmsEnabledState()V
    .locals 3

    .prologue
    .line 148
    const-string v1, "pref_key_root"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 149
    .local v0, "prefRoot":Landroid/preference/PreferenceScreen;
    iget-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStoragePrefCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 162
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->loadPrefs()V

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 127
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 412
    packed-switch p1, :pswitch_data_0

    .line 431
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 414
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 320
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 321
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 322
    iget-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_0

    .line 323
    const v0, 0x7f0a0079

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 325
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 341
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 332
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 338
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->finish()V

    goto :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    if-ne p1, v1, :cond_0

    .line 458
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRingtoneSummary(Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x1

    .line 461
    :cond_0
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 348
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0a008f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 383
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 355
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0a0090

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 364
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    .line 365
    const/4 v0, 0x1

    goto :goto_1

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enableNotifications(ZLandroid/content/Context;)V

    goto :goto_0

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startMmsDownload()V

    goto :goto_0

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    const-string v1, "package"

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 133
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 134
    .local v0, "isSmsEnabled":Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    if-eq v0, v1, :cond_0

    .line 135
    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    .line 136
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->invalidateOptionsMenu()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setEnabledNotificationsPref()V

    .line 142
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerListeners()V

    .line 143
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSmsEnabledState()V

    .line 144
    return-void
.end method
