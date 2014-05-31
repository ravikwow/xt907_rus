.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mCdrom:Landroid/preference/SwitchPreference;

.field private mCdromOptionEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 75
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 78
    :cond_0
    const v2, 0x7f05003f

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 81
    const-string v2, "usb_mtp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 82
    const-string v2, "usb_ptp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 84
    const-string v2, "usb_cdrom"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    .line 86
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "usb_cdrom_enabled"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdromOptionEnabled:Z

    .line 87
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 88
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdromOptionEnabled:Z

    if-nez v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "user"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 104
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 109
    :cond_2
    return-object v0

    .end local v1    # "um":Landroid/os/UserManager;
    :cond_3
    move v2, v3

    .line 86
    goto :goto_0

    .line 91
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 7
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 141
    const-string v5, "mtp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 152
    .local v2, "um":Landroid/os/UserManager;
    const-string v5, "no_usb_file_transfer"

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 153
    const-string v5, "UsbSettings"

    const-string v6, "USB is locked down"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 155
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 168
    :goto_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdromOptionEnabled:Z

    if-eqz v5, :cond_2

    .line 169
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "adb_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v3

    .line 170
    .local v0, "adbEnabled":Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "usb_cdrom_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v1, v3

    .line 173
    .local v1, "cdromEnabled":Z
    :goto_3
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 176
    :cond_0
    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 180
    :cond_1
    if-nez v0, :cond_9

    const-string v5, "mtp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "no_usb_file_transfer"

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 182
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 188
    .end local v0    # "adbEnabled":Z
    .end local v1    # "cdromEnabled":Z
    :cond_2
    :goto_4
    return-void

    .line 144
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_3
    const-string v5, "ptp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 148
    :cond_4
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 156
    .restart local v2    # "um":Landroid/os/UserManager;
    :cond_5
    iget-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v5, :cond_6

    .line 158
    const-string v5, "UsbSettings"

    const-string v6, "USB Normal Mode"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 160
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 162
    :cond_6
    const-string v5, "UsbSettings"

    const-string v6, "USB Accessory Mode"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 164
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_7
    move v0, v4

    .line 169
    goto/16 :goto_2

    .restart local v0    # "adbEnabled":Z
    :cond_8
    move v1, v4

    .line 170
    goto/16 :goto_3

    .line 184
    .restart local v1    # "cdromEnabled":Z
    :cond_9
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCdrom:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 119
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 195
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v4

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 201
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    const-string v0, "none"

    .line 206
    .local v0, "function":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    const-string v0, "mtp"

    .line 212
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 213
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    const-string v0, "ptp"

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method
