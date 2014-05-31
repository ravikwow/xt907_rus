.class public Lcom/android/settings/BrightnessSettings;
.super Landroid/preference/PreferenceActivity;
.source "BrightnessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBrightness:Lcom/android/settings/BrightnessPreference;

.field private mDisplaySaver:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessSettings;->addPreferencesFromResource(I)V

    .line 35
    const-string v0, "power_saver"

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/BrightnessSettings;->mDisplaySaver:Landroid/preference/CheckBoxPreference;

    .line 36
    iget-object v0, p0, Lcom/android/settings/BrightnessSettings;->mDisplaySaver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 37
    iget-object v2, p0, Lcom/android/settings/BrightnessSettings;->mDisplaySaver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_saver_enabled"

    invoke-static {v0, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 39
    const-string v0, "brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BrightnessPreference;

    iput-object v0, p0, Lcom/android/settings/BrightnessSettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    .line 40
    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 53
    const-string v2, "BrightnessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange enter, objValue is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "key":Ljava/lang/String;
    const-string v2, "power_saver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 70
    .local v0, "checked":Z
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_saver_enabled"

    if-ne v0, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    .end local v0    # "checked":Z
    :cond_0
    return v3

    .line 70
    .restart local v0    # "checked":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 50
    return-void
.end method
