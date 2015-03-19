.class public Lcom/motorola/settings/accounts/BuaAccountsUtil;
.super Ljava/lang/Object;
.source "BuaAccountsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndUpdatePreferenceScreen(Ljava/lang/String;Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 8
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const-string v6, "com.motorola.android.buacontactadapter"

    invoke-virtual {p0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 29
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 32
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.vcast.mediamanager"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 34
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-boolean v6, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_1

    .line 37
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_1

    .line 38
    const-string v6, "bua_media"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 40
    .local v3, "buaMediaPref":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 43
    .local v2, "applicationName":Ljava/lang/CharSequence;
    const-string v6, "com.vcast.mediamanager"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 45
    .local v1, "applicationIcon":Landroid/graphics/drawable/Drawable;
    const-string v6, "com.vcast.mediamanager"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 48
    .local v4, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 49
    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "applicationName":Ljava/lang/CharSequence;
    .end local v3    # "buaMediaPref":Landroid/preference/PreferenceScreen;
    .end local v4    # "launchIntent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 58
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
