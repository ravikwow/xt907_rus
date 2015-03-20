.class public Lcom/android/phone/DialPadSettingPrefScreen;
.super Landroid/preference/PreferenceActivity;
.source "DialPadSettingPrefScreen.java"

# interfaces
.implements Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;


# static fields
.field private static final VDBG:Z


# instance fields
.field private customNumEdit:Landroid/widget/EditText;

.field private mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

.field private mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

.field private mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

.field private mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private copyDialPadSettingFromMotsetting()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 285
    const-string v6, "auto_dialpad_sharedpreferences"

    invoke-virtual {p0, v6, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, "diapadPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 288
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v6, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v6, :cond_0

    const-string v6, "Enter copyDialPadSettingFromMotsetting "

    invoke-static {v6}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 290
    :cond_0
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    const-string v6, "DialpadSettingCopyDone"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 292
    sget-boolean v6, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v6, :cond_1

    const-string v6, "Copy : shared preference file not exist & never done "

    invoke-static {v6}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 293
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vm_tf_auto_dialpad_enabled"

    invoke-static {v6, v7, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 295
    .local v5, "value_vm_tf":I
    if-eq v5, v9, :cond_2

    .line 296
    const-string v6, "vm_tf_auto_dialpad_enabled"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 299
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "custom_auto_diapad_enabled"

    invoke-static {v6, v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 301
    .local v4, "value_custom":I
    if-eqz v4, :cond_3

    .line 302
    const-string v6, "custom_auto_diapad_enabled"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 305
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_diapad_custom_phone_number"

    invoke-static {v6, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "customNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 308
    const-string v6, "auto_diapad_custom_phone_number"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "all_auto_diapad_enabled"

    invoke-static {v6, v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 313
    .local v3, "value_all":I
    if-eqz v3, :cond_5

    .line 314
    const-string v6, "all_auto_diapad_enabled"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 317
    :cond_5
    const-string v6, "DialpadSettingCopyDone"

    invoke-interface {v2, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 319
    sget-boolean v6, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v6, :cond_6

    const-string v6, "Complete copyDialPadSettingFromMotsetting"

    invoke-static {v6}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 321
    .end local v0    # "customNumber":Ljava/lang/String;
    .end local v3    # "value_all":I
    .end local v4    # "value_custom":I
    .end local v5    # "value_vm_tf":I
    :cond_6
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "DialPadSettingPrefScreen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 167
    sget-boolean v4, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "onCreate."

    invoke-static {v4}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const v4, 0x7f060008

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 172
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 173
    .local v3, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v4, "button_voicemail_cb"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    .line 174
    const-string v4, "button_custom_num_cb"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    .line 175
    const-string v4, "button_all_calls_cb"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    .line 176
    const-string v4, "button_custom_num_edit"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CustomNumEditPreference;

    iput-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    .line 179
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_3

    .line 181
    :cond_1
    sget-boolean v4, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v4, :cond_2

    const-string v4, "onCreate: findPreference return null."

    invoke-static {v4}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 230
    :cond_2
    :goto_0
    return-void

    .line 186
    :cond_3
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->customNumEdit:Landroid/widget/EditText;

    .line 188
    const-string v4, "auto_dialpad_sharedpreferences"

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 189
    .local v2, "mDiapadPref":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 191
    .local v1, "customNumber":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->copyDialPadSettingFromMotsetting()V

    .line 194
    iget-object v7, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    const-string v4, "vm_tf_auto_dialpad_enabled"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 196
    iget-object v7, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    const-string v4, "custom_auto_diapad_enabled"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 198
    iget-object v7, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    const-string v4, "all_auto_diapad_enabled"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_8

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 201
    const-string v4, "auto_diapad_custom_phone_number"

    const/4 v7, 0x0

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 210
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    :cond_5
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/CustomNumEditPreference;->setDialogOnClosedListener(Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;)V

    .line 216
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 217
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 218
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 219
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 227
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_6
    move v4, v6

    .line 194
    goto :goto_1

    :cond_7
    move v4, v6

    .line 196
    goto :goto_2

    :cond_8
    move v4, v6

    .line 198
    goto :goto_3

    .line 221
    :cond_9
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 223
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    iget-object v7, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 242
    :goto_0
    return-object v0

    .line 236
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0412

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0413

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0411

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDialogClosed(Lcom/android/phone/CustomNumEditPreference;Z)V
    .locals 5
    .param p1, "preference"    # Lcom/android/phone/CustomNumEditPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    .line 137
    if-eqz p2, :cond_3

    .line 140
    const-string v3, "auto_dialpad_sharedpreferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    .local v1, "mDiapadPref":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/android/phone/DialPadSettingPrefScreen;->customNumEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "nanpNum":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    :cond_1
    if-eqz v0, :cond_2

    .line 152
    const-string v3, "auto_diapad_custom_phone_number"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->customNumEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "mDiapadPref":Landroid/content/SharedPreferences;
    .end local v2    # "nanpNum":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 160
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "mDiapadPref":Landroid/content/SharedPreferences;
    .restart local v2    # "nanpNum":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 271
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 82
    const-string v4, "auto_dialpad_sharedpreferences"

    invoke-virtual {p0, v4, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "mDiapadPref":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 90
    if-eqz v0, :cond_2

    .line 91
    const-string v4, "vm_tf_auto_dialpad_enabled"

    iget-object v5, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    :cond_2
    :goto_0
    return v3

    .line 97
    :cond_3
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_7

    .line 99
    if-eqz v0, :cond_4

    .line 100
    const-string v5, "custom_auto_diapad_enabled"

    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-ne v4, v3, :cond_6

    move v4, v3

    :goto_1
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    :cond_4
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    iget-object v5, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v4, v2

    .line 100
    goto :goto_1

    .line 108
    :cond_7
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_c

    .line 110
    if-eqz v0, :cond_8

    .line 111
    const-string v5, "all_auto_diapad_enabled"

    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-ne v4, v3, :cond_9

    move v4, v3

    :goto_2
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    :cond_8
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-ne v4, v3, :cond_a

    .line 118
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 119
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_9
    move v4, v2

    .line 111
    goto :goto_2

    .line 122
    :cond_a
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 123
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 125
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    iget-object v5, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 128
    :cond_c
    iget-object v4, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    if-eq p2, v4, :cond_2

    move v3, v2

    .line 133
    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    const-string v1, "mInEditCustomNumberscreen"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "mOKButtonState"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 263
    .local v0, "okButtonState":Z
    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CustomNumEditPreference;->setRestoreState(Z)V

    .line 265
    .end local v0    # "okButtonState":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 266
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 250
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    const-string v1, "mOKButtonState"

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    :cond_0
    const-string v1, "mInEditCustomNumberscreen"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    .end local v0    # "button":Landroid/widget/Button;
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    return-void

    .line 253
    :cond_1
    const-string v1, "mInEditCustomNumberscreen"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
