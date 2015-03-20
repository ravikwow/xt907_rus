.class public Lcom/android/calendar/QuickResponseSettings;
.super Landroid/preference/PreferenceFragment;
.source "QuickResponseSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mEditTextPrefs:[Landroid/preference/EditTextPreference;

.field mResponses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    check-cast p1, Lcom/android/calendar/CalendarSettingsActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/android/calendar/CalendarSettingsActivity;->hideMenuButtons()V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 45
    .local v6, "ps":Landroid/preference/PreferenceScreen;
    const v8, 0x7f0c0048

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/calendar/Utils;->getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    .line 49
    iget-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 50
    iget-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    array-length v8, v8

    new-array v8, v8, [Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    .line 52
    iget-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "i":I
    iget-object v0, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    .line 55
    .local v7, "response":Ljava/lang/String;
    new-instance v1, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, "et":Landroid/preference/EditTextPreference;
    const v8, 0x7f0c0049

    invoke-virtual {v1, v8}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 57
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v1, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    iget-object v8, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v1, v8, v3

    .line 61
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 54
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 64
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "et":Landroid/preference/EditTextPreference;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "response":Ljava/lang/String;
    :cond_0
    const-string v8, "QuickResponseSettings"

    const-string v9, "No responses found"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 67
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    aput-object p2, v1, v0

    .line 91
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "preferences_quick_responses"

    iget-object v3, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    :cond_0
    const/4 v1, 0x1

    .line 98
    :goto_1
    return v1

    .line 87
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarSettingsActivity;

    .line 79
    .local v0, "activity":Lcom/android/calendar/CalendarSettingsActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 82
    :cond_0
    return-void
.end method
