.class public Lcom/motorola/messaging/settings/MessageSettings;
.super Ljava/lang/Object;
.source "MessageSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/settings/MessageSettings$4;,
        Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;,
        Lcom/motorola/messaging/settings/MessageSettings$PhoneType;
    }
.end annotation


# static fields
.field private static LINE:Ljava/lang/String;

.field private static final LOCAL_LOG:Z

.field public static final MSG_UNIT_TEST_ENABLED:Z

.field private static mAppVersion:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDefaultPrefs:Landroid/content/SharedPreferences;

.field private static mDynamicSettings:Landroid/content/SharedPreferences;

.field private static mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

.field private static mInitRunnable:Ljava/lang/Runnable;

.field private static mIsContactPickerSupported:Ljava/lang/Boolean;

.field private static mIsLocationAppAvailable:Ljava/lang/Boolean;

.field private static mIsNamecardSupported:Ljava/lang/Boolean;

.field private static mLanguageDefaultOption:I

.field private static mMemFullThreshold:Ljava/lang/Long;

.field private static mNumberFormattingEnabled:Ljava/lang/Boolean;

.field private static mSettingsLoader:Lcom/motorola/messaging/settings/MessageSettingsLoader;

.field private static mShow16BitOption:Z

.field private static mShow7BitOption:Z

.field private static mShowLockingShiftOption:Z

.field private static mShowSingleShiftOption:Z

.field private static mStaticSettings:Landroid/content/SharedPreferences;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mWebSettings:Landroid/webkit/WebSettings;

.field private static sIsAP20Processor:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    .line 54
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_UT:Z

    sput-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->MSG_UNIT_TEST_ENABLED:Z

    .line 65
    sput-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->mShow7BitOption:Z

    .line 66
    sput-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->mShow16BitOption:Z

    .line 67
    sput-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->mShowSingleShiftOption:Z

    .line 68
    sput-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->mShowLockingShiftOption:Z

    .line 69
    sput v1, Lcom/motorola/messaging/settings/MessageSettings;->mLanguageDefaultOption:I

    .line 80
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->NONE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    .line 97
    const-string v0, "MSG-STAB-02-JB"

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->LINE:Ljava/lang/String;

    .line 100
    sput-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    .line 137
    sput-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mMemFullThreshold:Ljava/lang/Long;

    .line 220
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mIsLocationAppAvailable:Ljava/lang/Boolean;

    .line 222
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mIsNamecardSupported:Ljava/lang/Boolean;

    .line 224
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mIsContactPickerSupported:Ljava/lang/Boolean;

    .line 227
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$1;

    invoke-direct {v0}, Lcom/motorola/messaging/settings/MessageSettings$1;-><init>()V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mInitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    sput-object p0, Lcom/motorola/messaging/settings/MessageSettings;->mIsLocationAppAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    sput-object p0, Lcom/motorola/messaging/settings/MessageSettings;->mIsNamecardSupported:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    sput-object p0, Lcom/motorola/messaging/settings/MessageSettings;->mIsContactPickerSupported:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 47
    invoke-static {p0}, Lcom/motorola/messaging/settings/MessageSettings;->checkIfSelectedMethodIsValid(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/motorola/messaging/settings/MessageSettings;->mLanguageDefaultOption:I

    return v0
.end method

.method private static adjustOldPreferenceFile(Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1791
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1792
    const-string v0, "MessageSettings"

    const-string v3, "adjustOldPreferenceFile"

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_preferences.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 1801
    if-nez v0, :cond_1

    .line 1802
    const-string v0, "MessageSettings"

    const-string v3, "Bota upgrade: old preference file could not be renamed to new one! Some user preferences can be lost!"

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    :cond_1
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    .line 1810
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v3, "OutgoingMessageTypeDefaultPref"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1811
    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v4, "pref_key_msg_groups"

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1813
    sget-boolean v3, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 1814
    const-string v3, "MessageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref_key_msg_groups value read from old preference file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    :cond_2
    if-eqz v0, :cond_5

    .line 1819
    :goto_1
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1822
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 1823
    const-string v1, "MessageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref_key_message_group_type value set on new preference file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_3
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1827
    const-string v3, "pref_key_message_group_type"

    aget-object v0, v0, v2

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1828
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1830
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->loadEncodingSetting()V

    .line 1831
    return-void

    :cond_4
    move v0, v2

    .line 1811
    goto :goto_0

    :cond_5
    move v2, v1

    .line 1817
    goto :goto_1
.end method

.method public static autoRetrievalDefaultPref()Z
    .locals 3

    .prologue
    .line 1722
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "AutoRetrievalDefaultPref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static autoRetrievalRoamingDefaultPref()Z
    .locals 3

    .prologue
    .line 1731
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "RetrievalRoamingDefaultPref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static callbackNumDefaultPref()Z
    .locals 3

    .prologue
    .line 1740
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "CallbackNumDefaultPref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkIfSelectedMethodIsValid(I)Z
    .locals 2
    .param p0, "encodingMethod"    # I

    .prologue
    const/4 v0, 0x1

    .line 369
    packed-switch p0, :pswitch_data_0

    .line 393
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 372
    :pswitch_0
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->mShow7BitOption:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 377
    :pswitch_1
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->mShow16BitOption:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 382
    :pswitch_2
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->mShowSingleShiftOption:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 387
    :pswitch_3
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->mShowLockingShiftOption:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static dumpSettings()V
    .locals 7

    .prologue
    .line 320
    sget-boolean v4, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 321
    sget-object v4, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 322
    .local v0, "dynamicSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    const-string v4, "MessageSettings"

    const-string v5, "Dynamic settings is empty."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    sget-object v4, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 332
    .local v3, "staticSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    const-string v4, "MessageSettings"

    const-string v5, "Static settings is empty."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_1
    return-void

    .line 325
    .end local v3    # "staticSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_2
    const-string v4, "MessageSettings"

    const-string v5, "List of dynamic settings"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    .local v2, "key":Ljava/lang/String;
    const-string v4, "MessageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v3    # "staticSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_3
    const-string v4, "MessageSettings"

    const-string v5, "List of static settings"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    .restart local v2    # "key":Ljava/lang/String;
    const-string v4, "MessageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static forceCanonicalAddressUpdate()Z
    .locals 3

    .prologue
    .line 1931
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "ForceCanonicalAddressUpdate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static generateUaprof()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1072
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUaprofFormat()Ljava/lang/String;

    move-result-object v0

    .line 1074
    const-string v1, "$browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    const-string v1, "$browser"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getBrowserUaprof()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    :cond_0
    const-string v1, "$modelno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1079
    const-string v1, "$modelno"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getModelNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    :cond_1
    const-string v1, "$MODELNO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1083
    const-string v1, "$MODELNO"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getModelNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    :cond_2
    const-string v1, "$model"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1087
    const-string v1, "$model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    :cond_3
    const-string v1, "$MODEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1091
    const-string v1, "$MODEL"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    :cond_4
    const-string v1, "MessageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configured uaprof="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return-object v0
.end method

.method public static generateUserAgent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1035
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "ua":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getBlurVersion()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "motoBlurVersion":Ljava/lang/String;
    const-string v2, "MOT-%s/%s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static generateUserAgentFromFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1041
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUserAgentFormat()Ljava/lang/String;

    move-result-object v0

    .line 1043
    const-string v1, "$modelno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    const-string v1, "$modelno"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getModelNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    :cond_0
    const-string v1, "$MODELNO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    const-string v1, "$MODELNO"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getModelNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    :cond_1
    const-string v1, "$model"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    const-string v1, "$model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    :cond_2
    const-string v1, "$MODEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1056
    const-string v1, "$MODEL"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    :cond_3
    const-string v1, "$blurVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1060
    const-string v1, "$blurVersion"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getBlurVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    :cond_4
    const-string v1, "$browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1064
    const-string v1, "$browser"

    new-instance v2, Landroid/webkit/WebView;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    :cond_5
    const-string v1, "MessageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configured user agent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-object v0
.end method

.method public static get7BitEncodingOptionVisibility()Z
    .locals 1

    .prologue
    .line 617
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->mShow7BitOption:Z

    return v0
.end method

.method public static getAnonymousRecipientPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1203
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1204
    const-string v0, "MessageSettings"

    const-string v1, "getAnonymousRecipientPrompt, result=2131427743"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_0
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b019f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 874
    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings;->mAppVersion:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 875
    invoke-static {}, Lcom/motorola/messaging/settings/CustomerManager;->getCustomer()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "customerSt":Ljava/lang/String;
    sget-object v5, Lcom/motorola/messaging/frameworkadapter/motorola/MotoBuild;->CUSTOMERID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 878
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/messaging/frameworkadapter/motorola/MotoBuild;->CUSTOMERID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    :cond_0
    const-string v3, "NA"

    .line 882
    .local v3, "versionCode":Ljava/lang/String;
    const-string v4, "NA"

    .line 883
    .local v4, "versionName":Ljava/lang/String;
    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 885
    :try_start_0
    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 886
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 887
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".line="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/messaging/settings/MessageSettings;->LINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".customer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".model="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".modelno="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getModelNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".blur version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getBlurVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".build="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".release="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MM/dd/yy"

    sget-wide v7, Landroid/os/Build;->TIME:J

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (versionName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (versionCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (log="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (ut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/motorola/messaging/settings/MessageSettings;->MSG_UNIT_TEST_ENABLED:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/motorola/messaging/logger/Logger;->MSG_UT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/motorola/messaging/settings/MessageSettings;->mAppVersion:Ljava/lang/String;

    .line 906
    :cond_2
    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings;->mAppVersion:Ljava/lang/String;

    return-object v5

    .line 888
    :catch_0
    move-exception v1

    .line 889
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "MessageSettings"

    const-string v6, "Error getting application version!"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getAutoRetrievalEnabled()Z
    .locals 3

    .prologue
    .line 1288
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "AutoRetrievalEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAutoSmsToMmsConversionEnabled()Z
    .locals 3

    .prologue
    .line 1145
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SmsToMmsAutoConvert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBlurVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1615
    const-string v0, "ro.build.version.full"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrowserUaprof()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    const-string v0, "ro.mot.hw.uaprof"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1619
    const-string v0, "persist.radio.cdma.min"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectivityWaitTimeout()I
    .locals 3

    .prologue
    .line 1234
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "ConnectivityWaitTimeout"

    const v2, 0xafc8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getConversationMessageLimit()I
    .locals 3

    .prologue
    .line 1390
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v1, "MaxMessagesPerThread"

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCopyMessageToSimEnabled()Z
    .locals 3

    .prologue
    .line 682
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "CopyMessageToSimEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCurrentCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultEncodingMethod()I
    .locals 3

    .prologue
    .line 675
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "DefaultEncodingMethod"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultEncodingMethodForLanguage()I
    .locals 1

    .prologue
    .line 696
    sget v0, Lcom/motorola/messaging/settings/MessageSettings;->mLanguageDefaultOption:I

    return v0
.end method

.method public static getDynamic4DigitsEmailGatewayEnabled()Z
    .locals 1

    .prologue
    .line 944
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isWorldPhone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmailGatewayFromSimCard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    const-string v0, "gsm.sim.email.gateway"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnableMmsWhenDataDisabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1023
    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->ENABLE_MMS_WHEN_DATA_DISABLED:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1026
    .local v0, "value":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getEncodingMethod()I
    .locals 3

    .prologue
    .line 466
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v1, "sms_encoding_setting"

    sget v2, Lcom/motorola/messaging/settings/MessageSettings;->mLanguageDefaultOption:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEncodingPreferencesEnabled()Z
    .locals 2

    .prologue
    .line 645
    const-string v0, "telephony.sms.shift_table"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getGroupMessageTypeEnabled()Z
    .locals 3

    .prologue
    .line 1893
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "GroupMessageTypeEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIfSupportLockingShiftTable()Z
    .locals 3

    .prologue
    .line 522
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingMethod()I

    move-result v0

    .line 523
    .local v0, "value":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 524
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 525
    const-string v1, "MessageSettings"

    const-string v2, "getIfSupportLockingShiftTable == true"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_0
    const/4 v1, 0x1

    .line 533
    :goto_0
    return v1

    .line 530
    :cond_1
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 531
    const-string v1, "MessageSettings"

    const-string v2, "getIfSupportLockingShiftTable == false"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIfSupportNationalTable()Z
    .locals 3

    .prologue
    .line 502
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingMethod()I

    move-result v0

    .line 503
    .local v0, "value":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 504
    :cond_0
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 505
    const-string v1, "MessageSettings"

    const-string v2, "ifSupportNationalTable == true"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    const/4 v1, 0x1

    .line 513
    :goto_0
    return v1

    .line 510
    :cond_2
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 511
    const-string v1, "MessageSettings"

    const-string v2, "ifSupportNationalTable == false"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInServiceWaitTimeout()I
    .locals 3

    .prologue
    .line 1241
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "InServiceWaitTimeout"

    const/16 v2, 0x4e20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIsLocationVCardMandatory()Z
    .locals 3

    .prologue
    .line 1428
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "IsLocationVCardMandatory"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLockingShiftEncodingOptionVisibility()Z
    .locals 1

    .prologue
    .line 638
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->mShowLockingShiftOption:Z

    return v0
.end method

.method public static getMMSNotifyServerError()Z
    .locals 3

    .prologue
    .line 1007
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsNotifyServerError"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMemFullThreshold()J
    .locals 3

    .prologue
    .line 1189
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mMemFullThreshold:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 1191
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys_storage_full_threshold_bytes"

    const/high16 v2, 0x100000

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mMemFullThreshold:Ljava/lang/Long;

    .line 1197
    :cond_0
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mMemFullThreshold:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMessageGroupTypeDefaultPref()Ljava/lang/String;
    .locals 5

    .prologue
    .line 652
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "messageGroupTypeItems":[Ljava/lang/String;
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v3, "OutgoingMessageTypeDefaultPref"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 657
    .local v0, "index":I
    aget-object v2, v1, v0

    return-object v2
.end method

.method public static getMessageSettingsProviderCreated()Z
    .locals 3

    .prologue
    .line 1332
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    const-string v1, "MessageSettingsProviderCreated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsAbortProgressLimit()I
    .locals 4

    .prologue
    const/16 v0, 0x64

    .line 1490
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "MmsAbortProgressLimit"

    const/16 v3, 0x5a

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1491
    if-le v1, v0, :cond_0

    .line 1495
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getMmsAcceptHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1304
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsAcceptHeader"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsAdjustImageOrientation()Z
    .locals 3

    .prologue
    .line 999
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsAdjustImageOrientation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsCommonVideoResolutionsOnlyEnabled()Z
    .locals 3

    .prologue
    .line 802
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsCommonVideoResolutionsOnlyEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsConnectionTimeout()I
    .locals 3

    .prologue
    .line 1475
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsConnectionTimeout"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsContentDispositionSupport()Z
    .locals 3

    .prologue
    .line 668
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsContentDispositionSupport"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsConvertIcalToVcalEnabled()Z
    .locals 3

    .prologue
    .line 689
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsConvertIcalToVcalEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1109
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_country_code"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsDefaultApnName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1161
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsDefaultApnName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsDisableRetryAfterServerTimeout()Z
    .locals 3

    .prologue
    .line 1003
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsDisableRetryAfterServerTimeout"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsEncodingUTF8()Z
    .locals 3

    .prologue
    .line 560
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsEncodingUTF8"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsFromFormat()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1652
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "MmsFromFormat"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1654
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRequiredMMSC()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1659
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getMmsMaxImageHeight()I
    .locals 3

    .prologue
    .line 732
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_max_image_height"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsMaxImageWidth()I
    .locals 3

    .prologue
    .line 728
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_max_image_width"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsMaxVideoHeight()I
    .locals 3

    .prologue
    .line 818
    const v0, 0x7fffffff

    .line 820
    .local v0, "maxVideoHeight":I
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$4;->$SwitchMap$com$motorola$messaging$settings$MessageSettings$MmsMaxVideoResolution:[I

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxVideoResolution()Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 826
    :goto_0
    return v0

    .line 821
    :pswitch_0
    const/16 v0, 0x90

    goto :goto_0

    .line 822
    :pswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    .line 823
    :pswitch_2
    const/16 v0, 0x1e0

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMmsMaxVideoRecordingSeconds()I
    .locals 3

    .prologue
    .line 1369
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsMaxVideoRecordingSeconds"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsMaxVideoResolution()Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;
    .locals 5

    .prologue
    .line 784
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->QVGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    .line 786
    :try_start_0
    const-class v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v3, "MmsMaxVideoResolution"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :goto_0
    return-object v0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    const-string v2, "MessageSettings"

    const-string v3, "Failed to parse MmsMaxVideoResolution"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getMmsMaxVideoWidth()I
    .locals 3

    .prologue
    .line 806
    const v0, 0x7fffffff

    .line 808
    .local v0, "maxVideoWidth":I
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$4;->$SwitchMap$com$motorola$messaging$settings$MessageSettings$MmsMaxVideoResolution:[I

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxVideoResolution()Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 814
    :goto_0
    return v0

    .line 809
    :pswitch_0
    const/16 v0, 0xb0

    goto :goto_0

    .line 810
    :pswitch_1
    const/16 v0, 0x140

    goto :goto_0

    .line 811
    :pswitch_2
    const/16 v0, 0x280

    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMmsMaximumMessageSize()I
    .locals 4

    .prologue
    .line 717
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "mms_maximum_message_size"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 719
    .local v0, "mmsMaximumMessageSize":Ljava/lang/Integer;
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    .line 720
    const-string v1, "MessageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG-STATUS Checking flex mms_maximum_message_size. Value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getMmsMaximumPictureSizeForRetry()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1433
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "MmsMaxPictureSizeForRetry"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1435
    const/16 v2, 0x2f44

    .line 1437
    if-gt v1, v2, :cond_0

    .line 1441
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getMmsMicrocellPictureResizeEnabled()Z
    .locals 3

    .prologue
    .line 1869
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsMicrocellPictureResizeEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsMimeTypeBlackList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1897
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsMimeTypeBlackList"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1898
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1899
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 1902
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1905
    :cond_0
    return-object v2
.end method

.method public static getMmsMinNumOfMediasOnSlideshow()I
    .locals 3

    .prologue
    .line 744
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsMinNumOfMediasOnSlideshow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsNoProgressTimeout()I
    .locals 3

    .prologue
    .line 1469
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsNoProgressTimeout"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsNoResponseTimeout()I
    .locals 3

    .prologue
    .line 1462
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsNoResponseTimeout"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsNonAsciiFileNameSupport()Z
    .locals 3

    .prologue
    .line 1133
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_non_ascii_file_name_support"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsNumberPlusPrefixEnabled()Z
    .locals 3

    .prologue
    .line 1137
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsNumberPlusPrefixEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsOnlineAlbumAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1173
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_online_album"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsOnlineAlbumEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1272
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "MmsOnlineAlbumEnabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsOnlineAlbumAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getMmsRMMaxImageHeight()I
    .locals 3

    .prologue
    .line 773
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsRMMaxImageHeight"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsRMMaxImageWidth()I
    .locals 3

    .prologue
    .line 769
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsRMMaxImageWidth"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsSecondaryMmscEnabled()Z
    .locals 3

    .prologue
    .line 1141
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SecondaryMmscSupport"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsShowLocationWarning()Z
    .locals 3

    .prologue
    .line 1318
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    const-string v1, "ShowMmsLocationWarning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsSlideshowMaxImageHeight()I
    .locals 3

    .prologue
    .line 736
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsSlideshowMaxImageHeight"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsSlideshowMaxImageWidth()I
    .locals 3

    .prologue
    .line 740
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsSlideshowMaxImageWidth"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsSmsReportState()Z
    .locals 4

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "requestReport":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsDeliveryReportEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_delivery_reports"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 713
    :cond_0
    return v0
.end method

.method public static getMmsSubjectEnable()Z
    .locals 3

    .prologue
    .line 1258
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsSubjectEnable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsSubjectSizeLimit()I
    .locals 3

    .prologue
    .line 1265
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsSubjectSizeLimit"

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsTransIdEnable()Z
    .locals 3

    .prologue
    .line 1011
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "TransIdEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsTransferTimeoutForVoiceCall()I
    .locals 3

    .prologue
    .line 1480
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsTransferTimeoutForVoiceCall"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsTransmissionTimeout()I
    .locals 3

    .prologue
    .line 1485
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsTransferTimeout"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsUaprofFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1687
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsUaprofFormat"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsUaprofTagName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1121
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "UaprofTagName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsUseCCForRecipients()Z
    .locals 3

    .prologue
    .line 1418
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsUseCCForRecipients"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1117
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_user_agent"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsUserAgentFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1683
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsUserAgentFormat"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1125
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsVersion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsVideoResizeEnabled()Z
    .locals 3

    .prologue
    .line 748
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsVideoResizeEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsWapRejectEnable()Z
    .locals 3

    .prologue
    .line 980
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "WapRejectEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMmsXWapProfileURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1030
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_x_wap_profile_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModelNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1105
    const-string v0, "ro.mot.product.modelno"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkPrefixToRemove()Ljava/lang/String;
    .locals 3

    .prologue
    .line 661
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "NetworkPrefixToRemove"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotifyWapMmscEnable()Z
    .locals 3

    .prologue
    .line 1015
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "NotifyWapMmscEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getOldPreferenceFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 293
    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 294
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "shared_prefs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v2, "sharedPrefDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "com.motorola.blur.conversations_preferences.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    .local v1, "oldPrefFile":Ljava/io/File;
    return-object v1
.end method

.method public static getOneRRCConnectionEnabled()Z
    .locals 1

    .prologue
    .line 1883
    const/4 v0, 0x0

    return v0
.end method

.method public static getProprietaryHttpHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1113
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "ProprietaryHttpHeader"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRMMmsMaximumMessageSize()I
    .locals 3

    .prologue
    .line 758
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsRMMaximumMessageSize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryTimeout1()I
    .locals 3

    .prologue
    .line 1445
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_retry_timeout1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryTimeout2()I
    .locals 3

    .prologue
    .line 1449
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_retry_timeout2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryTimeout3()I
    .locals 3

    .prologue
    .line 1453
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_retry_timeout3"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryTimeout4()I
    .locals 3

    .prologue
    .line 1457
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "mms_retry_timeout4"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRoamingAutoRetrieveEnabled()Z
    .locals 3

    .prologue
    .line 1281
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "RoamingAutoRetrieveEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSMSCharacterLimit(Z)I
    .locals 3

    .prologue
    .line 1593
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SMSUCS2CharacterLimit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1594
    if-nez p0, :cond_0

    .line 1596
    mul-int/lit8 v0, v0, 0x2

    .line 1598
    :cond_0
    return v0
.end method

.method public static getSMSCharacterLimitAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1576
    invoke-static {v1}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimit(Z)I

    move-result v0

    .line 1577
    .local v0, "limit":I
    if-lt v0, v1, :cond_0

    const/16 v2, 0x46

    if-gt v0, v2, :cond_0

    .line 1581
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSavedText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1511
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    const-string v1, "TemporaryDraftText"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TemporaryDraftText"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1513
    return-object v0
.end method

.method public static getShowMessageGroupTypeWarning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1353
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getShowMessageGroupTypeWarningAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    const-string v2, "ShowMessageGroupTypeWarning"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShowMessageGroupTypeWarningAvailable()Z
    .locals 3

    .prologue
    .line 1346
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "ShowMessageGroupTypeWarningAvailable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSingleShiftEncodingOptionVisibililty()Z
    .locals 1

    .prologue
    .line 631
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->mShowSingleShiftOption:Z

    return v0
.end method

.method public static getSmsCharsRemainTilCounter()I
    .locals 3

    .prologue
    .line 1153
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SmsCharsRemainTilCounter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSmsEmailConvertToMmsOnMultipleSegmentsEnabled()Z
    .locals 3

    .prologue
    .line 1292
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SmsEmailConvertToMmsOnMultipleSegmentsEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsEmailConvertToMmsOnNon7BitEncodingEnabled()Z
    .locals 3

    .prologue
    .line 1296
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SmsEmailConvertToMmsOnNon7BitEncodingEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsEmailGatewayNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 850
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    const-string v2, "sms_pref_key_email_gateway_num"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "emailGatewayNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "sms_pref_key_email_gateway_num"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .end local v0    # "emailGatewayNumber":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getSmsEmailSubjectWithSlashEnabled()Z
    .locals 1

    .prologue
    .line 958
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isWorldPhone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsForce7BitEncoding()Z
    .locals 5

    .prologue
    .line 485
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingMethod()I

    move-result v1

    .line 486
    .local v1, "value":I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 488
    .local v0, "result":Z
    :goto_0
    sget-boolean v2, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 489
    const-string v2, "MessageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmsForce7BitEncoding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    return v0

    .line 486
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsMmsAliasEnabled()Z
    .locals 3

    .prologue
    .line 1129
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SmsMmsEnableAlias"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsCallbackNumEnable()Z
    .locals 3

    .prologue
    .line 976
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "CallbackNumEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsDeliveryReportEnable()Z
    .locals 3

    .prologue
    .line 700
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "DeliveryReportEnable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsEmotIconInKeypadEnabled()Z
    .locals 3

    .prologue
    .line 1250
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SmsMmsEmotIconInKeypadEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsErrorCodesEnable()Z
    .locals 3

    .prologue
    .line 1165
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "ErrorCodesEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsMTMemoryFullEnable()Z
    .locals 3

    .prologue
    .line 1157
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MTMemoryFullEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsMaxNumRecipients()I
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 966
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "MaxNumRecipients"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 968
    .local v0, "smsMmsMaxNumRecipients":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    .line 969
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 972
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getSmsMmsMaxNumRecipientsEnable()Z
    .locals 3

    .prologue
    .line 962
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MaxNumRecipientsEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsMsgDetailsEnable()Z
    .locals 3

    .prologue
    .line 1169
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MsgDetailsEnable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsNetworkTimestamp()Z
    .locals 3

    .prologue
    .line 1185
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "sms_mms_show_network_timestamp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsPriorityEnable()Z
    .locals 3

    .prologue
    .line 991
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "PriorityEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsSignatureEnable()Z
    .locals 3

    .prologue
    .line 984
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SignatureEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsSortByUnreadConversations()Z
    .locals 3

    .prologue
    .line 1311
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SmsMmsSortByUnreadConversations"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSmsMmsThreshold()I
    .locals 3

    .prologue
    .line 995
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "sms_mms_threshold"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSmsToMmsConversionEnabled()Z
    .locals 3

    .prologue
    .line 1149
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SmsToMmsConvertEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getStaticSettingByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1841
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1843
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUCS2EncodingOptionVisibility()Z
    .locals 1

    .prologue
    .line 624
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->mShow16BitOption:Z

    return v0
.end method

.method public static getUTMsgNumber()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1217
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-nez v1, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return v0

    .line 1221
    :cond_1
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "UTMsgNumber"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1223
    sget-boolean v1, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1224
    const-string v1, "MessageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUTMsgNumber, ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVZWIPv6Enabled()Z
    .locals 3

    .prologue
    .line 1254
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsVZWIPv6Enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVersionSettings()Ljava/lang/String;
    .locals 3

    .prologue
    .line 870
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "StaticVersionSettings"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceRecognitionEnabled()Z
    .locals 2

    .prologue
    .line 1958
    const-string v0, "msg.voice_input"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    sget-boolean v2, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 251
    const-string v2, "MessageSettings"

    const-string v3, "init"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mSettingsLoader:Lcom/motorola/messaging/settings/MessageSettingsLoader;

    if-eqz v2, :cond_2

    .line 255
    sget-boolean v2, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 256
    const-string v2, "MessageSettings"

    const-string v3, "MessageSettings has already been initialized!"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    sput-object p0, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    .line 263
    const-string v2, "MessageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG-STATUS version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    sput-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 266
    new-instance v2, Landroid/webkit/WebView;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sput-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 273
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getOldPreferenceFile()Ljava/io/File;

    move-result-object v0

    .line 274
    .local v0, "oldPrefFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 277
    .local v1, "onBotaUpgrade":Z
    new-instance v2, Lcom/motorola/messaging/settings/MessageSettingsLoader;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/motorola/messaging/settings/MessageSettingsLoader;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mSettingsLoader:Lcom/motorola/messaging/settings/MessageSettingsLoader;

    .line 278
    invoke-static {v1}, Lcom/motorola/messaging/settings/MessageSettings;->loadSettings(Z)V

    .line 281
    if-eqz v1, :cond_3

    .line 283
    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->adjustOldPreferenceFile(Ljava/io/File;)V

    .line 289
    :goto_1
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings;->mInitRunnable:Ljava/lang/Runnable;

    const-string v4, "init_settings"

    invoke-virtual {v2, v3, v4}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    .line 287
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/messaging/settings/MessageSettings;->loadDefaultPreferences(Z)V

    goto :goto_1
.end method

.method public static isAP20Processor()Z
    .locals 2

    .prologue
    .line 1862
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->sIsAP20Processor:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1863
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tegra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->sIsAP20Processor:Ljava/lang/Boolean;

    .line 1865
    :cond_0
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->sIsAP20Processor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isCDMA()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 406
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->NONE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-eq v2, v3, :cond_2

    .line 407
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->WORLD_CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 411
    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public static isContactPickerEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1695
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mIsContactPickerSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v2, "ContactPickerEnabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEmergencyCallbackMode()Z
    .locals 1

    .prologue
    .line 1606
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1607
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExtraAddressCharactersEnabled()Z
    .locals 3

    .prologue
    .line 1644
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "ExtraAddressCharactersEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGSM()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 415
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->NONE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-eq v2, v3, :cond_2

    .line 416
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v3, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->WORLD_GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 420
    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public static isLocationAppAvailable()Z
    .locals 1

    .prologue
    .line 1939
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mIsLocationAppAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMMSHIPRIEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 443
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->NONE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-eq v1, v2, :cond_1

    .line 444
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->LTE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 447
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v1, v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isMmsLocationVCardWarningEnabled()Z
    .locals 3

    .prologue
    .line 1536
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "LocationVcardWarningEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMmsRestrictionModeEnabled()Z
    .locals 3

    .prologue
    .line 1704
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "MmsRestrictionModeEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMmsVcardLocationWarningAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1545
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    const-string v3, "VcardLocationWarningDialogState"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return v0

    .line 1548
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isMmsLocationVCardWarningEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1551
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIsLocationVCardMandatory()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1552
    goto :goto_0

    .line 1554
    :cond_2
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getIsLocationVCardEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1555
    goto :goto_0
.end method

.method public static isNamecardSupported()Z
    .locals 1

    .prologue
    .line 1947
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mIsNamecardSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNumberFormattingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1625
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mNumberFormattingEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 1626
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hyphenation_feature_enabled"

    invoke-static {v2, v3, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mNumberFormattingEnabled:Ljava/lang/Boolean;

    .line 1629
    :cond_0
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mNumberFormattingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 1626
    goto :goto_0
.end method

.method public static isRestrictionEnabled()Z
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x0

    return v0
.end method

.method public static isSIMCardAbsent()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 451
    sget-boolean v2, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 452
    const-string v2, "MessageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSIMCardAbsent, isGSM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SimState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/settings/MessageSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 459
    .local v0, "simState":I
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSendBlankSmsEnabled()Z
    .locals 3

    .prologue
    .line 1914
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "SendBlankSmsEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShortCodeDetectionEnabled()Z
    .locals 3

    .prologue
    .line 1636
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "ShortCodeDetectionEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSmsEmailEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 835
    sget-object v4, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v5, "sms_pref_key_to_email"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 836
    .local v1, "isSmsEmailEnabled":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailGatewayNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 837
    .local v0, "isEmailGatewayValid":Z
    :goto_0
    sget-boolean v4, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 838
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 839
    const-string v4, "MessageSettings"

    const-string v5, "SMS Email is ON but Email Gateway is invalid!"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v2

    .end local v0    # "isEmailGatewayValid":Z
    :cond_1
    move v0, v3

    .line 836
    goto :goto_0

    .restart local v0    # "isEmailGatewayValid":Z
    :cond_2
    move v2, v3

    .line 842
    goto :goto_1
.end method

.method public static isStorageFull()Z
    .locals 3

    .prologue
    .line 1376
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    const-string v1, "IsStorageFull"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWorldPhone()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 424
    sget-object v4, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->NONE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-eq v4, v5, :cond_2

    .line 425
    sget-object v4, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->WORLD_GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/motorola/messaging/settings/MessageSettings;->mEmulatePhone:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->WORLD_CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    if-ne v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 439
    .local v0, "result":Z
    .local v1, "stringValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 429
    .end local v0    # "result":Z
    .end local v1    # "stringValue":Ljava/lang/String;
    :cond_2
    const-string v4, "ro.telephony.gsm-routes-us-smsc"

    invoke-static {v4}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .restart local v1    # "stringValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 432
    .restart local v0    # "result":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 434
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_4

    move v0, v3

    :cond_3
    :goto_1
    move v2, v0

    .line 439
    goto :goto_0

    :cond_4
    move v0, v2

    .line 434
    goto :goto_1

    .line 435
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static loadDefaultPreferences(Z)V
    .locals 3

    .prologue
    .line 1758
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1759
    const-string v0, "MessageSettings"

    const-string v1, "loadDefaultPreferences"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mSettingsLoader:Lcom/motorola/messaging/settings/MessageSettingsLoader;

    invoke-virtual {v0}, Lcom/motorola/messaging/settings/MessageSettingsLoader;->hasSetDefaultValues()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1764
    :cond_1
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1770
    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f05004e

    invoke-static {v1, v2, p0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1774
    const-string v1, "pref_key_vibrate"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->vibrateDefaultPref()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1775
    const-string v1, "pref_key_message_group_type"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMessageGroupTypeDefaultPref()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1776
    const-string v1, "pref_key_mms_auto_retrieval"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->autoRetrievalDefaultPref()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1777
    const-string v1, "pref_key_mms_retrieval_during_roaming"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->autoRetrievalRoamingDefaultPref()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1778
    const-string v1, "pref_key_enable_callback_number"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->callbackNumDefaultPref()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1780
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1782
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->loadEncodingSetting()V

    .line 1783
    return-void
.end method

.method public static loadEncodingOptions()V
    .locals 8

    .prologue
    .line 574
    sget-boolean v5, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 575
    const-string v5, "MessageSettings"

    const-string v6, "Enter loadEncodingOptions"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentCountry()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "currentCountry":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoding_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "name":Ljava/lang/String;
    sget-boolean v5, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v5, :cond_1

    .line 583
    const-string v5, "MessageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadEncodingOptions Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_1
    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v6, ""

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 589
    sget-object v5, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v6, "encoding_default"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    :cond_2
    sget-boolean v5, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v5, :cond_3

    .line 593
    const-string v5, "MessageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadEncodingOptions Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_3
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "values":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/motorola/messaging/settings/MessageSettings;->mLanguageDefaultOption:I

    .line 599
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/motorola/messaging/settings/MessageSettings;->mShow7BitOption:Z

    .line 600
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/motorola/messaging/settings/MessageSettings;->mShow16BitOption:Z

    .line 601
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/motorola/messaging/settings/MessageSettings;->mShowSingleShiftOption:Z

    .line 602
    const/4 v5, 0x4

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/motorola/messaging/settings/MessageSettings;->mShowLockingShiftOption:Z

    .line 604
    sget-boolean v5, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v5, :cond_4

    .line 605
    const-string v5, "MessageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLanguageDefaultOption: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/motorola/messaging/settings/MessageSettings;->mLanguageDefaultOption:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v5, "MessageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShow7BitOption: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/motorola/messaging/settings/MessageSettings;->mShow7BitOption:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v5, "MessageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShow16BitOption: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/motorola/messaging/settings/MessageSettings;->mShow16BitOption:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v5, "MessageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShowSingleShiftOption: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/motorola/messaging/settings/MessageSettings;->mShowSingleShiftOption:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v5, "MessageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShowLockingShiftOption: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/motorola/messaging/settings/MessageSettings;->mShowLockingShiftOption:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_4
    return-void
.end method

.method public static loadEncodingSetting()V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingPreferencesEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$2;

    invoke-direct {v0}, Lcom/motorola/messaging/settings/MessageSettings$2;-><init>()V

    .line 359
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "load_encoding_options"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 363
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getDefaultEncodingMethod()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/messaging/settings/MessageSettings;->setEncodingMethod(I)V

    goto :goto_0
.end method

.method private static loadSettings(Z)V
    .locals 3
    .param p0, "onBotaUpgrade"    # Z

    .prologue
    const/4 v2, 0x0

    .line 300
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "MessageSettings"

    const-string v1, "loadSettings"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    const-string v1, "MsgSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    .line 308
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;

    const-string v1, "MsgDynamicSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    .line 314
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mSettingsLoader:Lcom/motorola/messaging/settings/MessageSettingsLoader;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/settings/MessageSettingsLoader;->loadStaticSettings(Z)V

    .line 316
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->dumpSettings()V

    .line 317
    return-void
.end method

.method public static playAudioAsSlideshow()Z
    .locals 3

    .prologue
    .line 1922
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "PlayAudioAsSlideshow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readEmailGatewayFromSimCard()Z
    .locals 3

    .prologue
    .line 931
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "EmailGatewayFromSimCard"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1503
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TemporaryDraftText"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1504
    return-void
.end method

.method public static setConversationsMessageLimit(I)V
    .locals 2

    .prologue
    .line 1397
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxMessagesPerThread"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1398
    return-void
.end method

.method public static setEncodingMethod(I)V
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 474
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sms_encoding_setting"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 475
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "MessageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetEncodingMethod in settings value == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    return-void
.end method

.method public static setIsStorageFull(Z)V
    .locals 2

    .prologue
    .line 1383
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsStorageFull"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1384
    return-void
.end method

.method public static setMessageSettingsProviderCreated()V
    .locals 3

    .prologue
    .line 1339
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MessageSettingsProviderCreated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1340
    return-void
.end method

.method public static setMmsShowLocationWarning(Z)V
    .locals 2

    .prologue
    .line 1325
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowMmsLocationWarning"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1326
    return-void
.end method

.method public static setMmsVcardLocationWarningDialogState(Z)V
    .locals 2

    .prologue
    .line 1564
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VcardLocationWarningDialogState"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1565
    return-void
.end method

.method public static setNotificationCount(I)V
    .locals 2

    .prologue
    .line 1529
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NotificationCount"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1530
    return-void
.end method

.method public static setShowMessageGroupTypeWarning(Z)V
    .locals 2

    .prologue
    .line 1361
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowMessageGroupTypeWarning"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1362
    return-void
.end method

.method public static setSmsEmailGatewayNumber(Ljava/lang/String;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 913
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v3, "sms_pref_key_email_gateway_num"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 916
    :cond_0
    move-object v0, p0

    .line 917
    .local v0, "final_value":Ljava/lang/String;
    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings;->mDynamicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sms_pref_key_email_gateway_num"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 919
    new-instance v1, Lcom/motorola/messaging/settings/MessageSettings$3;

    invoke-direct {v1, v0}, Lcom/motorola/messaging/settings/MessageSettings$3;-><init>(Ljava/lang/String;)V

    .line 924
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    const-string v3, "update_email_gateway_num"

    invoke-virtual {v2, v1, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 925
    return-void
.end method

.method public static shallGenerateUaprof()Z
    .locals 2

    .prologue
    .line 1677
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUaprofFormat()Ljava/lang/String;

    move-result-object v0

    .line 1678
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "$product"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shallGenerateUserAgent()Z
    .locals 3

    .prologue
    .line 1669
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "GenerateUserAgent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateStaticSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1854
    .local p0, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mSettingsLoader:Lcom/motorola/messaging/settings/MessageSettingsLoader;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/settings/MessageSettingsLoader;->updateStaticSettings(Ljava/util/Map;)V

    .line 1855
    return-void
.end method

.method public static vibrateDefaultPref()Z
    .locals 3

    .prologue
    .line 1713
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings;->mStaticSettings:Landroid/content/SharedPreferences;

    const-string v1, "VibrateDefaultPref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
