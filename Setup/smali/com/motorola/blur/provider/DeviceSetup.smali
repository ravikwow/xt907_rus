.class public final Lcom/motorola/blur/provider/DeviceSetup;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/DeviceSetup$ProviderCapabilities;,
        Lcom/motorola/blur/provider/DeviceSetup$GAMSAccount;,
        Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;,
        Lcom/motorola/blur/provider/DeviceSetup$SyncConnect;,
        Lcom/motorola/blur/provider/DeviceSetup$PrivacyProfileTagBlacklist;,
        Lcom/motorola/blur/provider/DeviceSetup$PrivacyProfileName;,
        Lcom/motorola/blur/provider/DeviceSetup$SettingsKeyValues;,
        Lcom/motorola/blur/provider/DeviceSetup$Projections;,
        Lcom/motorola/blur/provider/DeviceSetup$Intents;,
        Lcom/motorola/blur/provider/DeviceSetup$RetentionPolicies;,
        Lcom/motorola/blur/provider/DeviceSetup$Tombstones;,
        Lcom/motorola/blur/provider/DeviceSetup$AppSettings;,
        Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;,
        Lcom/motorola/blur/provider/DeviceSetup$Services;,
        Lcom/motorola/blur/provider/DeviceSetup$Accounts;,
        Lcom/motorola/blur/provider/DeviceSetup$Providers;,
        Lcom/motorola/blur/provider/DeviceSetup$Search;,
        Lcom/motorola/blur/provider/DeviceSetup$AuthenticatorFeatures;,
        Lcom/motorola/blur/provider/DeviceSetup$Capabilities;,
        Lcom/motorola/blur/provider/DeviceSetup$ImageSizes;
    }
.end annotation


# static fields
.field public static final ACCESS_ACCOUNTS_PERMISSION:Ljava/lang/String; = "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

.field public static final ACCOUNTS_SYNC_COMPLETE_ACTION:Ljava/lang/String; = "com.motorola.blur.setupprovider.sync_complete"

.field public static final ACTION_ACCOUNT_SETUP_COMPLETE:Ljava/lang/String; = "com.motorola.blur.setupprovider.action.ACCOUNT_SETUP_COMPLETE"

.field public static final ACTION_POST_SETUP:Ljava/lang/String; = "com.motorola.blur.setupprovider.action.POST_SETUP"

.field public static final ACTIVESYNC_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.blur.provider.activesync"

.field public static final ADD_SINGLE_ACCOUNT:Ljava/lang/String; = "addSingleAccount"

.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.blur.setupprovider"

.field public static final AUTH_TYPE_YAHOO:I = 0x28

.field public static final BUA_ACCOUNT_MANAGE_ACTION:Ljava/lang/String; = "com.motorola.BackupAssistanceClient.ACTION_PROVISION"

.field public static final BUA_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.android.buacontactadapter"

.field protected static final CAPABILITY_SELECTION:Ljava/lang/String; = "providers_id=? AND capability=?"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFERRED_SETUP:I = 0x3

.field public static final EMAIL_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.blur.provider.email"

.field public static final EXTRA_HOME_SCREEN_POLICY:Ljava/lang/String; = "home_screen_policy"

.field public static final EXTRA_SETUP_STATE:Ljava/lang/String; = "setup_state"

.field public static final FIXEDEMAIL_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.blur.provider.fixedemail"

.field public static final GAMS_BLUR_AUTHENTICATOR_TYPE:Ljava/lang/String; = "com.motorola.blur.provider"

.field public static final GAMS_BLUR_TOKEN_TYPE:Ljava/lang/String; = "gams.blur.provider"

.field public static final HOME_SCREEN_POLICY_LOCAL:I = 0x1

.field public static final HOME_SCREEN_POLICY_SERVER:I = 0x0

.field public static final HUX_ACCOUNT_TYPE:Ljava/lang/String; = "com.verizon.hux.email"

.field public static final HUX_PROVIDER:Ljava/lang/String; = "hux"

.field public static final ICON_NOT_FOUND:I = -0x1

.field protected static final ID_PROJECTION:[Ljava/lang/String;

.field public static final IS_CLEAN:I = 0x0

.field public static final IS_DIRTY:I = 0x1

.field public static final IS_INFLIGHT:I = 0x2

.field public static final KEY_INTENT_USE_BROADCAST:Ljava/lang/String; = "USE_BROADCAST"

.field public static final NORMAL_SETUP:I = 0x1

.field public static final NOTIFY_URI:Landroid/net/Uri;

.field public static final NOTIFY_URI_PATH:Ljava/lang/String; = "notify"

.field public static final OVERRIDE_FILENAME:Ljava/lang/String; = "SetupPref.properties"

.field public static final OVERRIDE_FILE_DIR:Ljava/lang/String; = "/sdcard/prefsetup"

.field public static final PRELOADED_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.contacts.preloaded"

.field private static final PRETTY_NAME_SELECTION:Ljava/lang/String; = "account_pretty_name = ? AND _id != ?"

.field public static final PRETTY_NAME_T_ONLINE:Ljava/lang/String; = "T-Online"

.field public static final PRIVACY_PROFILE_PREFS:Ljava/lang/String; = "PRIVACY_PROFILE_PREFS"

.field protected static final PROVIDER_CAPABILITIES_PROJECTION:[Ljava/lang/String;

.field protected static final PROVIDER_CAPABILITIES_SELECTION:Ljava/lang/String; = "providers_id=?"

.field protected static final PROVIDER_INFO_PROJECTION:[Ljava/lang/String;

.field protected static final PROVIDER_NAME_PROJECTION:[Ljava/lang/String;

.field protected static final PROVIDER_PRETTY_NAME_PROJECTION:[Ljava/lang/String;

.field public static final SDN_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.ServiceDialingNumbers"

.field public static final SETUP_COMPLETE:I = 0x1

.field public static final SETUP_SKIPPED:I = 0x0

.field public static final SILENT_SETUP:I = 0x2

.field public static final SILENT_SETUP_BUILD_PROPERTY:Ljava/lang/String; = "ro.mot.setuptype"

.field public static final SYNC_INFO_CONTENT_URI:Landroid/net/Uri;

.field public static final SetupType:Ljava/lang/String; = "SetupType"

.field public static final TAG:Ljava/lang/String; = "DeviceSetup"

.field public static final TEST_ACTION:Ljava/lang/String; = "com.motorola.blur.setup.ACTION_TEST"

.field public static final UNCONNECTED_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT"

.field public static final UPDATE_GAMS:Ljava/lang/String; = "UPDATE_GAMS"

.field public static final VISUAL_VOICE_MAIL_TYPE:Ljava/lang/String; = "Visual Voice Mail"

.field public static final VMM_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.huxvmmaccount"

.field public static final YAHOO_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.blur.provider.yahoo"

.field public static final _DIRTY:Ljava/lang/String; = "dirty"

.field public static final _SYNCING:Ljava/lang/String; = "syncing"

.field public static final _SYNC_ID:Ljava/lang/String; = "sync_id"

.field private static final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const-string v0, "content://com.motorola.blur.setupprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    .line 40
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "notify"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->NOTIFY_URI:Landroid/net/Uri;

    .line 93
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "sync"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->SYNC_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->ID_PROJECTION:[Ljava/lang/String;

    .line 95
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "provider"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->PROVIDER_NAME_PROJECTION:[Ljava/lang/String;

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pretty_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->PROVIDER_PRETTY_NAME_PROJECTION:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "provider"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "pretty_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->PROVIDER_INFO_PROJECTION:[Ljava/lang/String;

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "capability"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->PROVIDER_CAPABILITIES_PROJECTION:[Ljava/lang/String;

    .line 1593
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2110
    return-void
.end method

.method public static final createPrettyName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "emailAddress"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1599
    const/16 v11, 0x40

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v8, v11, 0x1

    .line 1600
    .local v8, "startPoint":I
    const/16 v11, 0x2e

    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1601
    .local v2, "endPoint":I
    if-ge v2, v8, :cond_0

    .line 1602
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1606
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1607
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1608
    .local v0, "base":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1610
    .local v9, "suffix":I
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1611
    .local v7, "splitter":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1612
    const-string v11, "\\."

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1613
    .local v5, "splits":[Ljava/lang/String;
    array-length v6, v5

    .line 1614
    .local v6, "splitsNum":I
    if-lez v6, :cond_3

    .line 1622
    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1623
    aget-object v10, v5, v3

    .line 1624
    .local v10, "temp":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Landroid/util/Patterns;->TOP_LEVEL_DOMAIN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    if-nez v3, :cond_6

    .line 1626
    :cond_2
    move-object v0, v10

    .line 1632
    .end local v3    # "i":I
    .end local v5    # "splits":[Ljava/lang/String;
    .end local v6    # "splitsNum":I
    .end local v10    # "temp":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1633
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1635
    :cond_4
    const-string v11, "T-Online"

    invoke-static {v0, v11}, Lcom/motorola/blur/util/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1636
    const-string v11, "T-Online"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1641
    .local v1, "baseLength":I
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {p1, v11, v12, v13}, Lcom/motorola/blur/provider/DeviceSetup;->findDuplicatePrettyNames(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v11

    if-lez v11, :cond_9

    .line 1642
    if-lez v9, :cond_5

    .line 1643
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v4, v1, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1645
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 1646
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1622
    .end local v1    # "baseLength":I
    .restart local v3    # "i":I
    .restart local v5    # "splits":[Ljava/lang/String;
    .restart local v6    # "splitsNum":I
    .restart local v10    # "temp":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1638
    .end local v3    # "i":I
    .end local v5    # "splits":[Ljava/lang/String;
    .end local v6    # "splitsNum":I
    .end local v10    # "temp":Ljava/lang/String;
    :cond_7
    invoke-static {v0}, Lcom/motorola/blur/util/StringUtils;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1640
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 1648
    .restart local v1    # "baseLength":I
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private static final createProviderInfo(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "providerId"    # J
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "providerPrettyName"    # Ljava/lang/String;

    .prologue
    .line 1850
    new-instance v7, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    invoke-direct {v7, p1, p2, p3, p4}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 1851
    .local v7, "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    const/4 v6, 0x0

    .line 1853
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup;->PROVIDER_CAPABILITIES_PROJECTION:[Ljava/lang/String;

    const-string v3, "providers_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1855
    if-eqz v6, :cond_1

    .line 1856
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1857
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1859
    :sswitch_0
    const/4 v0, 0x1

    # invokes: Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->setSMTPCapability(Z)V
    invoke-static {v7, v0}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->access$000(Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1868
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 1869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1862
    :sswitch_1
    const/4 v0, 0x1

    :try_start_1
    # invokes: Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->setFriendsCapability(Z)V
    invoke-static {v7, v0}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->access$100(Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1868
    :cond_1
    if-eqz v6, :cond_2

    .line 1869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1872
    :cond_2
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->cache:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->cache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    return-object v7

    .line 1857
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public static final findDuplicatePrettyNames(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nameToTest"    # Ljava/lang/String;
    .param p2, "idToIgnore"    # J

    .prologue
    const/4 v7, 0x0

    .line 1659
    const/4 v6, 0x0

    .line 1661
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "account_pretty_name = ? AND _id != ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1663
    if-eqz v6, :cond_1

    .line 1664
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1667
    if-eqz v6, :cond_0

    .line 1668
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1671
    :cond_0
    :goto_0
    return v0

    .line 1667
    :cond_1
    if-eqz v6, :cond_2

    .line 1668
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 1671
    goto :goto_0

    .line 1667
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1668
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAccountId(Landroid/content/ContentResolver;J)J
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "providerId"    # J

    .prologue
    const/4 v9, 0x0

    .line 1727
    const-wide/16 v7, 0x0

    .line 1728
    .local v7, "accountId":J
    if-eqz p0, :cond_1

    .line 1729
    const/4 v6, 0x0

    .line 1731
    .local v6, "accountCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "provider_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1735
    if-eqz v6, :cond_1

    .line 1736
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1739
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1744
    .end local v6    # "accountCursor":Landroid/database/Cursor;
    :cond_1
    return-wide v7

    .line 1735
    .restart local v6    # "accountCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1736
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1737
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1739
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 1684
    invoke-static {p0, p1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    move-result-object v0

    .line 1685
    .local v0, "map":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v0, :cond_0

    .line 1686
    invoke-virtual {v0}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->getId()J

    move-result-wide v1

    .line 1688
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getProviderIdFromAccountId(Landroid/content/ContentResolver;J)J
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "accountId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1706
    const-wide/16 v7, 0x0

    .line 1707
    .local v7, "providerId":J
    if-eqz p0, :cond_1

    .line 1708
    const/4 v6, 0x0

    .line 1710
    .local v6, "accountCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "provider_id"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1714
    if-eqz v6, :cond_1

    .line 1715
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1718
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1723
    .end local v6    # "accountCursor":Landroid/database/Cursor;
    :cond_1
    return-wide v7

    .line 1714
    .restart local v6    # "accountCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1715
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1716
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1718
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final getProviderInfo(Landroid/content/ContentResolver;J)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "providerId"    # J

    .prologue
    .line 1879
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->cache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    .line 1880
    .local v6, "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 1898
    .end local v6    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .local v7, "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :goto_0
    return-object v7

    .line 1883
    .end local v7    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .restart local v6    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :cond_0
    const/4 v8, 0x0

    .line 1885
    .local v8, "providerCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup;->PROVIDER_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1887
    if-eqz v8, :cond_1

    .line 1888
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1889
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->createProviderInfo(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1893
    :cond_1
    if-eqz v8, :cond_2

    .line 1894
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v6

    .line 1898
    .end local v6    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .restart local v7    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    goto :goto_0

    .line 1893
    .end local v7    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .restart local v6    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1894
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final getProviderInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 1902
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    .line 1903
    .local v7, "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v7, :cond_0

    move-object v8, v7

    .line 1922
    .end local v7    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .local v8, "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :goto_0
    return-object v8

    .line 1906
    .end local v8    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .restart local v7    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :cond_0
    const/4 v9, 0x0

    .line 1908
    .local v9, "providerCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup;->PROVIDER_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1910
    if-eqz v9, :cond_1

    .line 1911
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1912
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, p1, v2}, Lcom/motorola/blur/provider/DeviceSetup;->createProviderInfo(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1918
    :cond_1
    if-eqz v9, :cond_2

    .line 1919
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v8, v7

    .line 1922
    .end local v7    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .restart local v8    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    goto :goto_0

    .line 1915
    .end local v8    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .restart local v7    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :catch_0
    move-exception v6

    .line 1916
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "DeviceSetup"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Error trying to get provider info for provider "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1918
    if-eqz v9, :cond_2

    .line 1919
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1918
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 1919
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "providerId"    # J

    .prologue
    .line 1757
    invoke-static {p0, p1, p2}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderInfo(Landroid/content/ContentResolver;J)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    move-result-object v0

    .line 1758
    .local v0, "map":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v0, :cond_0

    .line 1759
    invoke-virtual {v0}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1761
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getProviderPrettyName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "providerId"    # J

    .prologue
    .line 1774
    invoke-static {p0, p1, p2}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderInfo(Landroid/content/ContentResolver;J)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    move-result-object v0

    .line 1775
    .local v0, "map":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {v0}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->getPrettyName()Ljava/lang/String;

    move-result-object v1

    .line 1778
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSetupTypeFromBuild(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2038
    const/4 v5, 0x2

    .line 2041
    .local v5, "setupType":I
    const-string v8, "ro.mot.setuptype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2042
    .local v3, "prop":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2044
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2048
    :goto_0
    if-eq v5, v11, :cond_0

    const/4 v8, 0x3

    if-eq v5, v8, :cond_0

    .line 2049
    const/4 v5, 0x2

    .line 2062
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 2064
    .local v6, "state":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "mounted_ro"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2069
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v8, "/sdcard/prefsetup"

    const-string v9, "SetupPref.properties"

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    .local v1, "filename":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2075
    const/4 v2, 0x0

    .line 2077
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 2078
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2079
    .local v4, "props":Ljava/util/Properties;
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2080
    const-string v8, "SetupType"

    invoke-virtual {v4, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2081
    .local v7, "type":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2083
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 2088
    :cond_2
    if-eqz v2, :cond_3

    .line 2090
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2107
    .end local v1    # "filename":Ljava/io/File;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v4    # "props":Ljava/util/Properties;
    .end local v7    # "type":Ljava/lang/String;
    :cond_3
    :goto_1
    return v5

    .line 2045
    .end local v6    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2046
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "DeviceSetup"

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "Invalid build property for setup type. Setting as normal setup"

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2091
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "filename":Ljava/io/File;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v4    # "props":Ljava/util/Properties;
    .restart local v6    # "state":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2092
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "DeviceSetup"

    new-array v9, v11, [Ljava/lang/Object;

    const-string v10, "setup type pref- exception closing input stream"

    aput-object v10, v9, v12

    aput-object v0, v9, v13

    invoke-static {v8, v9}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 2085
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "props":Ljava/util/Properties;
    .end local v7    # "type":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2086
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "DeviceSetup"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v0, v9}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2088
    if-eqz v2, :cond_3

    .line 2090
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 2091
    :catch_3
    move-exception v0

    .line 2092
    const-string v8, "DeviceSetup"

    new-array v9, v11, [Ljava/lang/Object;

    const-string v10, "setup type pref- exception closing input stream"

    aput-object v10, v9, v12

    aput-object v0, v9, v13

    invoke-static {v8, v9}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 2088
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_4

    .line 2090
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2093
    :cond_4
    :goto_2
    throw v8

    .line 2091
    :catch_4
    move-exception v0

    .line 2092
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "DeviceSetup"

    new-array v10, v11, [Ljava/lang/Object;

    const-string v11, "setup type pref- exception closing input stream"

    aput-object v11, v10, v12

    aput-object v0, v10, v13

    invoke-static {v9, v10}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public static final hasCapability(Landroid/content/ContentResolver;JI)Z
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "providerId"    # J
    .param p3, "capability"    # I

    .prologue
    const/4 v7, 0x0

    .line 1834
    const/4 v6, 0x0

    .line 1836
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "providers_id=? AND capability=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    int-to-long v8, p3

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1838
    if-eqz v6, :cond_1

    .line 1839
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1842
    if-eqz v6, :cond_0

    .line 1843
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1846
    :cond_0
    :goto_0
    return v0

    .line 1842
    :cond_1
    if-eqz v6, :cond_2

    .line 1843
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 1846
    goto :goto_0

    .line 1842
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1843
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isFixedEmail(Landroid/content/Context;J)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerId"    # J

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 1942
    const/4 v8, 0x0

    .line 1943
    .local v8, "isFixedEmail":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1944
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v9

    .line 1947
    .local v9, "providerName":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v1, "email"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "activesync"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "yahoo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hux"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1954
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "capability"

    aput-object v3, v2, v4

    const-string v3, "providers_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1960
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_1

    .line 1962
    :goto_0
    if-nez v8, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1963
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1964
    .local v7, "cap":I
    packed-switch v7, :pswitch_data_0

    .line 1971
    const-string v1, "DeviceSetup"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Not FixedEmail capability: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1978
    .end local v7    # "cap":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 1979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 1968
    .restart local v7    # "cap":I
    :pswitch_0
    const/4 v8, 0x1

    .line 1969
    goto :goto_0

    .line 1978
    .end local v7    # "cap":I
    :cond_1
    if-eqz v6, :cond_2

    .line 1979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1983
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    return v8

    .line 1964
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
