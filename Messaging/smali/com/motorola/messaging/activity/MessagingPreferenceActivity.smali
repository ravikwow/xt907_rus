.class public Lcom/motorola/messaging/activity/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static TAG:Ljava/lang/String;

.field private static mCallbackNumber:Ljava/lang/String;


# instance fields
.field private mCallbackEditorPreference:Landroid/preference/EditTextPreference;

.field mMsgLimitListener:Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;

.field private mMsgLimitPref:Landroid/preference/Preference;

.field private mRecycler:Lcom/motorola/messaging/provider/Recycler;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    const-string v1, "MessagingPreferenceActivity"

    sput-object v1, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    .line 71
    sput-boolean v0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->DEBUG:Z

    .line 72
    sget-boolean v1, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    .line 107
    const-string v0, ""

    sput-object v0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackNumber:Ljava/lang/String;

    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackEditorPreference:Landroid/preference/EditTextPreference;

    .line 719
    new-instance v0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$7;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$7;-><init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mMsgLimitListener:Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/MessagingPreferenceActivity;
    .param p1, "x1"    # Landroid/os/Vibrator;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->clearSearchHistory()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Landroid/preference/RingtonePreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/MessagingPreferenceActivity;
    .param p1, "x1"    # Landroid/preference/RingtonePreference;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->updateRingtoneSummary(Landroid/preference/RingtonePreference;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/MessagingPreferenceActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getEncodingString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)Lcom/motorola/messaging/provider/Recycler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mRecycler:Lcom/motorola/messaging/provider/Recycler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->setMsgDisplayLimit()V

    return-void
.end method

.method private clearSearchHistory()V
    .locals 3

    .prologue
    .line 269
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.motorola.messaging.search"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 271
    .local v0, "suggestions":Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 274
    const v1, 0x7f0b0082

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 277
    return-void
.end method

.method private getEncodingString(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 527
    packed-switch p1, :pswitch_data_0

    .line 536
    :pswitch_0
    const v0, 0x7f0b0195

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 529
    :pswitch_1
    const v0, 0x7f0b0194

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 531
    :pswitch_2
    const v0, 0x7f0b0196

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :pswitch_3
    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final getIsLocationVCardEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 628
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 629
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "pref_key_location_card"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final getMmsRestrictionMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isMmsRestrictionModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    :goto_0
    return v1

    .line 617
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 618
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "pref_key_restriction_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static final getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 678
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 679
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "pref_key_ringtone"

    const-string v3, "content://settings/system/notification_sound"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "ringtoneStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private initClearSearchHistoryPref()V
    .locals 2

    .prologue
    .line 341
    const-string v1, "pref_key_clear_search_history"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 343
    .local v0, "clearSearchPref":Landroid/preference/Preference;
    new-instance v1, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$2;-><init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 350
    return-void
.end method

.method private initEncodingPref()V
    .locals 15

    .prologue
    .line 425
    sget-boolean v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v12, :cond_0

    .line 426
    sget-object v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v13, "enter initEncodingPref "

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingPreferencesEnabled()Z

    move-result v7

    .line 430
    .local v7, "showEncodingOptions":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->get7BitEncodingOptionVisibility()Z

    move-result v6

    .line 431
    .local v6, "show7BitEncodingOption":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getUCS2EncodingOptionVisibility()Z

    move-result v10

    .line 432
    .local v10, "showUCS2Encodingoption":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSingleShiftEncodingOptionVisibililty()Z

    move-result v9

    .line 433
    .local v9, "showSingleShiftEncodingoption":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getLockingShiftEncodingOptionVisibility()Z

    move-result v8

    .line 437
    .local v8, "showLockingShiftEncodingoption":Z
    if-eqz v7, :cond_1

    if-nez v6, :cond_3

    if-nez v10, :cond_3

    if-nez v9, :cond_3

    if-nez v8, :cond_3

    .line 440
    :cond_1
    sget-boolean v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v12, :cond_2

    .line 441
    sget-object v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v13, "Option to be hidden"

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_2
    :goto_0
    return-void

    .line 447
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 448
    .local v5, "root":Landroid/preference/PreferenceScreen;
    const-string v12, "pref_key_general_settings"

    invoke-virtual {v5, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 450
    .local v4, "generalCategory":Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingMethod()I

    move-result v11

    .line 451
    .local v11, "value":I
    sget-boolean v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v12, :cond_4

    .line 452
    sget-object v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get EncodingType value == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_4
    new-instance v0, Lcom/motorola/messaging/settings/SummaryListPreference;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/settings/SummaryListPreference;-><init>(Landroid/content/Context;)V

    .line 456
    .local v0, "encodingPref":Lcom/motorola/messaging/settings/SummaryListPreference;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v3, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v2, "entrySummaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v6, :cond_6

    .line 461
    sget-boolean v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v12, :cond_5

    .line 462
    sget-object v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v13, "mShow7BitOption is true, showing option 7 BIT"

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_5
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getEncodingString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    const v12, 0x7f0b0198

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_6
    if-eqz v8, :cond_8

    .line 470
    sget-boolean v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v12, :cond_7

    .line 471
    sget-object v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v13, "mShowLockingShiftOption is true, showing option Locking Shift"

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_7
    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const/4 v12, 0x3

    invoke-direct {p0, v12}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getEncodingString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    const v12, 0x7f0b019b

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_8
    if-eqz v9, :cond_a

    .line 478
    sget-boolean v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v12, :cond_9

    .line 479
    sget-object v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v13, "mShowSingleShiftOption is true, showing option Single Shift"

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_9
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    const/4 v12, 0x2

    invoke-direct {p0, v12}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getEncodingString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    if-eqz v8, :cond_d

    .line 484
    const v12, 0x7f0b019a

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_a
    :goto_1
    if-eqz v10, :cond_c

    .line 491
    sget-boolean v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v12, :cond_b

    .line 492
    sget-object v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v13, "mShow16BitOption is true, showing option 16 BIT"

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_b
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getEncodingString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const v12, 0x7f0b0199

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v12}, Lcom/motorola/messaging/settings/SummaryListPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 503
    const v12, 0x7f0b0192

    invoke-virtual {v0, v12}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 504
    const-string v12, "pref_key_encoding_method"

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 505
    const v12, 0x7f0b0193

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 506
    invoke-direct {p0, v11}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getEncodingString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 509
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 511
    new-instance v12, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$5;

    invoke-direct {v12, p0, v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$5;-><init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Lcom/motorola/messaging/settings/SummaryListPreference;)V

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 487
    :cond_d
    const v12, 0x7f0b019b

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private initLimitSummary()V
    .locals 1

    .prologue
    .line 416
    const-string v0, "pref_key_msg_delete_limit"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mMsgLimitPref:Landroid/preference/Preference;

    .line 417
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->setMsgDisplayLimit()V

    .line 418
    return-void
.end method

.method private initRingtonePref()V
    .locals 5

    .prologue
    .line 396
    const-string v3, "pref_key_ringtone"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    .line 397
    .local v0, "ringtonePreference":Landroid/preference/RingtonePreference;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 398
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "pref_key_ringtone"

    const-string v4, "content://settings/system/notification_sound"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "savedRingtone":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->updateRingtoneSummary(Landroid/preference/RingtonePreference;Ljava/lang/String;)V

    .line 402
    new-instance v3, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$4;-><init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Landroid/preference/RingtonePreference;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 413
    :cond_0
    return-void
.end method

.method private initVibrationPref()V
    .locals 2

    .prologue
    .line 319
    const-string v1, "pref_key_vibrate"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 320
    .local v0, "vibrationPref":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 321
    new-instance v1, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$1;-><init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 338
    :cond_0
    return-void
.end method

.method private initializePreferences()V
    .locals 1

    .prologue
    .line 156
    const v0, 0x7f05004e

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 157
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initVibrationPref()V

    .line 158
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initRingtonePref()V

    .line 159
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initEncodingPref()V

    .line 160
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initLimitSummary()V

    .line 161
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initClearSearchHistoryPref()V

    .line 162
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->setRequiredPreferences()V

    .line 163
    return-void
.end method

.method public static isDefaultMessageGroupType(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 658
    const/4 v3, 0x0

    .line 659
    .local v3, "result":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getGroupMessageTypeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 660
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 661
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "pref_key_message_group_type"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMessageGroupTypeDefaultPref()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "prefsValueString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "MessageGroupTypeItems":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 668
    .end local v0    # "MessageGroupTypeItems":[Ljava/lang/String;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsValueString":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method public static final isMessageNotificationEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 639
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 640
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final isNotificationVibrate(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 650
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 651
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "pref_key_vibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private restoreDefaultPreferences()V
    .locals 3

    .prologue
    .line 301
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/motorola/messaging/settings/MessageSettings;->loadDefaultPreferences(Z)V

    .line 304
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 305
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsCallbackNumEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "number":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->updateCallbackNumber(Ljava/lang/String;)V

    .line 310
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 311
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initializePreferences()V

    .line 312
    return-void
.end method

.method private setMessageGroupTypePrefSummary()V
    .locals 6

    .prologue
    .line 381
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 382
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "pref_key_message_group_type"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMessageGroupTypeDefaultPref()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "prefsValueString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "messageGroupTypeItemsValues":[Ljava/lang/String;
    const-string v4, "pref_key_message_group_type"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 388
    .local v0, "groupTypePref":Landroid/preference/Preference;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    return-void
.end method

.method private setMsgDisplayLimit()V
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mMsgLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b0093

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mRecycler:Lcom/motorola/messaging/provider/Recycler;

    invoke-virtual {v4}, Lcom/motorola/messaging/provider/Recycler;->getMessageLimit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method private setRequiredPreferences()V
    .locals 4

    .prologue
    .line 169
    sget-boolean v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 170
    sget-object v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v3, "setRequiredPreferences"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 174
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string v2, "pref_key_general_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 176
    .local v0, "pref_key_general_settings":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_b

    .line 177
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsDeliveryReportEnable()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "pref_key_delivery_reports"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    sget-boolean v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 181
    sget-object v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v3, "Removed Delivery reports preference"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAutoRetrievalEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    .line 186
    const-string v2, "pref_key_mms_auto_retrieval"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    sget-boolean v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 189
    sget-object v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v3, "Removed Auto Retrieve preference"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_2
    const-string v2, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_3
    :goto_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsSignatureEnable()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "pref_key_enable_signature"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "pref_key_message_signature"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    sget-boolean v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_4

    .line 208
    sget-object v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v3, "Removed Signature preference"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_4
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsCallbackNumEnable()Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "pref_key_enable_callback_number"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "pref_key_sms_mms_callback_number"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 216
    sget-boolean v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_5

    .line 217
    sget-object v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v3, "Removed Callback number preference"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_5
    :goto_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isCDMA()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 227
    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_6
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isLocationAppAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIsLocationVCardMandatory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 233
    :cond_7
    const-string v2, "pref_key_location_card"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_8
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isMmsRestrictionModeEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 238
    sget-boolean v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_9

    .line 239
    sget-object v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v3, "Removed Restriction Mode preference"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_9
    const-string v2, "pref_key_restriction_mode"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_a
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getGroupMessageTypeEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 247
    const-string v2, "pref_key_message_group_type"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_b
    :goto_2
    return-void

    .line 196
    :cond_c
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getRoamingAutoRetrieveEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    sget-boolean v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 199
    sget-object v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v3, "Removed Roaming Auto Retrieve preference"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_d
    const-string v2, "pref_key_sms_mms_callback_number"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackEditorPreference:Landroid/preference/EditTextPreference;

    goto :goto_1

    .line 250
    :cond_e
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->setMessageGroupTypePrefSummary()V

    goto :goto_2
.end method

.method private updateCallbackNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "newNumber"    # Ljava/lang/String;

    .prologue
    .line 565
    sput-object p1, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackNumber:Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackEditorPreference:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackEditorPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 569
    :cond_0
    return-void
.end method

.method private updateRingtoneSummary(Landroid/preference/RingtonePreference;Ljava/lang/String;)V
    .locals 6
    .param p1, "ringtonePreference"    # Landroid/preference/RingtonePreference;
    .param p2, "uriString"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    const v1, 0x7f0b008b

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 604
    :goto_0
    return-void

    .line 577
    :cond_0
    new-instance v0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$6;-><init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;Landroid/os/Handler;ILjava/lang/String;Landroid/preference/RingtonePreference;)V

    .line 602
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "get_and_set_rintone"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallbackNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 544
    const-string v0, ""

    .line 545
    .local v0, "callbackNumber":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsCallbackNumEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_sms_mms_callback_number"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mRecycler:Lcom/motorola/messaging/provider/Recycler;

    .line 139
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->initializePreferences()V

    .line 140
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsCallbackNumEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getCallbackNumber()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "number":Ljava/lang/String;
    sput-object v1, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackNumber:Ljava/lang/String;

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-direct {p0, v1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->updateCallbackNumber(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onContentChanged()V

    .line 151
    .end local v1    # "number":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 152
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 153
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 354
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x0

    .line 356
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 377
    :goto_0
    return-object v0

    .line 358
    :pswitch_0
    const v1, 0x7f0b0080

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 359
    const v1, 0x7f0b0081

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 360
    const v1, 0x7f0b007a

    new-instance v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$3;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$3;-><init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    const v1, 0x7f0b007b

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 367
    goto :goto_0

    .line 369
    :pswitch_1
    new-instance v0, Lcom/motorola/messaging/view/NumberPickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    iget-object v2, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mMsgLimitListener:Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mRecycler:Lcom/motorola/messaging/provider/Recycler;

    invoke-virtual {v1}, Lcom/motorola/messaging/provider/Recycler;->getMessageLimit()I

    move-result v3

    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mRecycler:Lcom/motorola/messaging/provider/Recycler;

    invoke-virtual {v1}, Lcom/motorola/messaging/provider/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mRecycler:Lcom/motorola/messaging/provider/Recycler;

    invoke-virtual {v1}, Lcom/motorola/messaging/provider/Recycler;->getMessageMaxLimit()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/view/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;III)V

    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 282
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 283
    const v0, 0x7f0b007f

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 284
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 297
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 291
    :sswitch_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 294
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mMsgLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 687
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 689
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsCallbackNumEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "pref_key_sms_mms_callback_number"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 694
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getCallbackNumber()Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, "number":Ljava/lang/String;
    const/4 v2, 0x1

    .line 696
    .local v2, "isDialable":Z
    if-eqz v3, :cond_2

    .line 697
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 698
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 699
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    if-le v0, v4, :cond_3

    .line 700
    :cond_0
    const/4 v2, 0x0

    .line 704
    :cond_1
    if-nez v2, :cond_4

    .line 705
    sget-object v4, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackNumber:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->updateCallbackNumber(Ljava/lang/String;)V

    .line 706
    const v4, 0x7f0b0071

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 708
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onContentChanged()V

    .line 717
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "isDialable":Z
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 698
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "isDialable":Z
    .restart local v3    # "number":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    :cond_4
    sput-object v3, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mCallbackNumber:Ljava/lang/String;

    goto :goto_1

    .line 714
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "isDialable":Z
    .end local v3    # "number":Ljava/lang/String;
    :cond_5
    const-string v4, "pref_key_message_group_type"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getGroupMessageTypeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 715
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->setMessageGroupTypePrefSummary()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 258
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 260
    return-void
.end method
