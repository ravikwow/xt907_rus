.class public Lcom/android/phone/RespondViaSmsManager$Settings;
.super Landroid/preference/PreferenceActivity;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 390
    # getter for: Lcom/android/phone/RespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Settings: onCreate()..."

    # invokes: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 394
    :cond_0
    # getter for: Lcom/android/phone/RespondViaSmsManager;->mPerProviderSavedQuickSms:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$600()Landroid/content/SharedPreferences;

    move-result-object v5

    if-nez v5, :cond_1

    .line 395
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "respond_via_sms_prefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    # setter for: Lcom/android/phone/RespondViaSmsManager;->mPerProviderSavedQuickSms:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$602(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 409
    :cond_1
    const v5, 0x7f06000e

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 429
    const-string v5, "canned_response_pref_1"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    # setter for: Lcom/android/phone/RespondViaSmsManager;->pref1:Landroid/preference/EditTextPreference;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$702(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;

    .line 430
    # getter for: Lcom/android/phone/RespondViaSmsManager;->mPerProviderSavedQuickSms:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$600()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "canned_response_pref_1"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0348

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "pref1Title":Ljava/lang/String;
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref1:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 432
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref1:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v5

    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref1:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref1:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 434
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref1:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 436
    const-string v5, "canned_response_pref_2"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    # setter for: Lcom/android/phone/RespondViaSmsManager;->pref2:Landroid/preference/EditTextPreference;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$802(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;

    .line 437
    # getter for: Lcom/android/phone/RespondViaSmsManager;->mPerProviderSavedQuickSms:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$600()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "canned_response_pref_2"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0349

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "pref2Title":Ljava/lang/String;
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref2:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$800()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 439
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref2:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$800()Landroid/preference/EditTextPreference;

    move-result-object v5

    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref2:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$800()Landroid/preference/EditTextPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref2:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$800()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 441
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref2:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$800()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 443
    const-string v5, "canned_response_pref_3"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    # setter for: Lcom/android/phone/RespondViaSmsManager;->pref3:Landroid/preference/EditTextPreference;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$902(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;

    .line 444
    # getter for: Lcom/android/phone/RespondViaSmsManager;->mPerProviderSavedQuickSms:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$600()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "canned_response_pref_3"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c034a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "pref3Title":Ljava/lang/String;
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref3:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$900()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 446
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref3:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$900()Landroid/preference/EditTextPreference;

    move-result-object v5

    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref3:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$900()Landroid/preference/EditTextPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 447
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref3:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$900()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 448
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref3:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$900()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 450
    const-string v5, "canned_response_pref_4"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    # setter for: Lcom/android/phone/RespondViaSmsManager;->pref4:Landroid/preference/EditTextPreference;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$1002(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;

    .line 451
    # getter for: Lcom/android/phone/RespondViaSmsManager;->mPerProviderSavedQuickSms:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$600()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "canned_response_pref_4"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c034b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "pref4Title":Ljava/lang/String;
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref4:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$1000()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 453
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref4:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$1000()Landroid/preference/EditTextPreference;

    move-result-object v5

    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref4:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$1000()Landroid/preference/EditTextPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref4:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$1000()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 455
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref4:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$1000()Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 459
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 461
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 463
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 526
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 527
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 528
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 529
    const/4 v1, 0x1

    .line 531
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 493
    # getter for: Lcom/android/phone/RespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange: key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 494
    :cond_0
    # getter for: Lcom/android/phone/RespondViaSmsManager;->VDBG:Z
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  preference = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 495
    :cond_1
    # getter for: Lcom/android/phone/RespondViaSmsManager;->VDBG:Z
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  newValue = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    :cond_2
    move-object v1, p1

    .line 497
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 504
    .local v1, "pref":Landroid/preference/EditTextPreference;
    # getter for: Lcom/android/phone/RespondViaSmsManager;->mPerProviderSavedQuickSms:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$600()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 505
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, "tmpKeyValue":Ljava/lang/String;
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref1:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne v1, v3, :cond_5

    .line 508
    const-string v2, "canned_response_pref_1"

    :cond_3
    :goto_0
    move-object v3, p2

    .line 516
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 519
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 521
    .end local v2    # "tmpKeyValue":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    return v3

    .line 509
    .restart local v2    # "tmpKeyValue":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref2:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$800()Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne v1, v3, :cond_6

    .line 510
    const-string v2, "canned_response_pref_2"

    goto :goto_0

    .line 511
    :cond_6
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref3:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$900()Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne v1, v3, :cond_7

    .line 512
    const-string v2, "canned_response_pref_3"

    goto :goto_0

    .line 513
    :cond_7
    # getter for: Lcom/android/phone/RespondViaSmsManager;->pref4:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$1000()Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne v1, v3, :cond_3

    .line 514
    const-string v2, "canned_response_pref_4"

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 467
    # getter for: Lcom/android/phone/RespondViaSmsManager;->VDBG:Z
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceClick: preference.key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    :cond_0
    move-object v2, p1

    .line 468
    check-cast v2, Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 469
    .local v0, "mEditText":Landroid/widget/EditText;
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 470
    .local v1, "mOKButton":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 472
    new-instance v2, Lcom/android/phone/RespondViaSmsManager$Settings$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/phone/RespondViaSmsManager$Settings$1;-><init>(Lcom/android/phone/RespondViaSmsManager$Settings;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 486
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
