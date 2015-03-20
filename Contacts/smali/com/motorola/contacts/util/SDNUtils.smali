.class public Lcom/motorola/contacts/util/SDNUtils;
.super Ljava/lang/Object;
.source "SDNUtils.java"


# static fields
.field private static SDN_FEATURE_DISABLED:I

.field private static SDN_FEATURE_ENABLED:I

.field private static SDN_PACKAGE_NOT_EXIST:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/motorola/contacts/util/SDNUtils;->SDN_FEATURE_DISABLED:I

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/motorola/contacts/util/SDNUtils;->SDN_FEATURE_ENABLED:I

    .line 35
    const/4 v0, 0x2

    sput v0, Lcom/motorola/contacts/util/SDNUtils;->SDN_PACKAGE_NOT_EXIST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSDNContact(Landroid/content/ContentResolver;J)Z
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contactID"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 80
    const-string v6, "deleted=0 AND account_type=\'com.motorola.ServiceDialingNumbers\' AND account_name=\'ServiceDialingNumbers\' AND contact_id=?"

    .line 85
    .local v6, "WHERE_CLAUSE":Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 89
    .local v2, "RAW_PROJ":[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "deleted=0 AND account_type=\'com.motorola.ServiceDialingNumbers\' AND account_name=\'ServiceDialingNumbers\' AND contact_id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 93
    .local v7, "rawCur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    if-eqz v7, :cond_1

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 100
    goto :goto_0
.end method

.method public static checkSDNFeatureFlag(Landroid/content/Context;)Z
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 40
    const-string v9, "sdnPrefs"

    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 41
    .local v6, "settings":Landroid/content/SharedPreferences;
    const-string v9, "SDN_FEATURE_ENABLED"

    sget v10, Lcom/motorola/contacts/util/SDNUtils;->SDN_FEATURE_DISABLED:I

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 42
    .local v5, "sdnStatus":I
    const/4 v4, 0x0

    .line 44
    .local v4, "sdnPackageExist":Z
    sget v9, Lcom/motorola/contacts/util/SDNUtils;->SDN_FEATURE_ENABLED:I

    if-ne v5, v9, :cond_0

    .line 73
    :goto_0
    return v7

    .line 46
    :cond_0
    sget v9, Lcom/motorola/contacts/util/SDNUtils;->SDN_FEATURE_DISABLED:I

    if-ne v5, v9, :cond_2

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.motorola.ServiceDialingNumbers"

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 50
    .local v2, "pinfo":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x1

    .line 55
    .end local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_1
    const-string v9, "sdnPrefs"

    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 57
    .local v3, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v4, :cond_1

    .line 58
    const-string v8, "SDN_FEATURE_ENABLED"

    sget v9, Lcom/motorola/contacts/util/SDNUtils;->SDN_FEATURE_ENABLED:I

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 51
    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .end local v3    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SDNUtils"

    const-string v10, "Package Not found Exception.."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v4, 0x0

    goto :goto_1

    .line 64
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .restart local v3    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v7, "SDN_FEATURE_ENABLED"

    sget v9, Lcom/motorola/contacts/util/SDNUtils;->SDN_PACKAGE_NOT_EXIST:I

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v7, v8

    .line 68
    goto :goto_0

    .line 72
    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .end local v3    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v7, "SDNUtils"

    const-string v9, "SDN Package Not Installed.."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 73
    goto :goto_0
.end method
