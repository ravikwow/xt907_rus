.class public Lcom/android/settings/DemoModeSettings;
.super Ljava/lang/Object;
.source "DemoModeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eraseAllDataOnPhone(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/settings/DemoModeSettings;->isDemoModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/android/settings/DemoModeSettings;->showMasterClearPasswordDialog(Landroid/content/Context;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/android/settings/DemoModeSettings;->launchMasterClear(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isDemoModeEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "mDemoModeContext":Landroid/content/Context;
    const/4 v0, 0x0

    .line 82
    .local v0, "demoModeEnabled":Z
    :try_start_0
    const-string v4, "com.motorola.demomode"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    const-string v4, "DemoModeSharedPrefEnabled"

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 85
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "DemoMode_enabled"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static launchMasterClear(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 41
    const v1, 0x7f0b04cc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 42
    check-cast p0, Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 43
    return-void
.end method

.method public static showMasterClearPasswordDialog(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 51
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f040051

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "entryView":Landroid/view/View;
    const v3, 0x7f0800d1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 54
    .local v2, "passwordEditor":Landroid/widget/EditText;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b004c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b004d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/DemoModeSettings$1;

    invoke-direct {v5, v2, p0}, Lcom/android/settings/DemoModeSettings$1;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/settings/PrivacySettings;->mPasswordDialog:Landroid/app/Dialog;

    .line 71
    return-void
.end method
