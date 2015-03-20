.class public Lcom/motorola/blur/setup/SetupUtility;
.super Ljava/lang/Object;
.source "SetupUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/SetupUtility$showNavBarButtonTask;,
        Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;,
        Lcom/motorola/blur/setup/SetupUtility$PrivacyProfileTagBlacklist;,
        Lcom/motorola/blur/setup/SetupUtility$PrivacyProfileName;,
        Lcom/motorola/blur/setup/SetupUtility$KeyValues;
    }
.end annotation


# static fields
.field private static final CUSTOMER_ID:Ljava/lang/String; = "ro.mot.build.customerid"

.field public static final DATASWITCH_SETUP_HOME:Ljava/lang/String; = "com.motorola.dataswitch.LocaleSelect"

.field public static final DATASWITCH_SETUP_PACKAGE:Ljava/lang/String; = "com.motorola.dataswitch"

.field private static final DEFAULT_PREFERENCES:Ljava/lang/String; = "defaults.xml"

.field public static final EXTRA_SETUP_FINISH_PACKAGE:Ljava/lang/String; = "setup_finish_package"

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final GOOGLE_SETUP_HOME:Ljava/lang/String; = "com.google.android.setupwizard.SetupWizardActivity"

.field public static final GOOGLE_SETUP_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field public static final PRIVACY_PROFILE_PREFS:Ljava/lang/String; = "PRIVACY_PROFILE_PREFS"

.field public static final READY_2_GO_CONFIGURED:Ljava/lang/String; = "R2GConfigured"

.field public static final READY_2_GO_PACKAGE:Ljava/lang/String; = "com.dashwire.config"

.field private static final SHOW_GOOGLE_SETUP:Ljava/lang/String; = "show_google_setup_wizard"

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field private static final TABLET:Ljava/lang/String; = "tablet"

.field private static final TABLET_FLOW:Ljava/lang/String; = "ro.build.characteristics"

.field public static final TAG:Ljava/lang/String; = "SetupUtility"

.field private static final VERIZON:Ljava/lang/String; = "verizon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    return-void
.end method

.method public static checkSetupCompleted(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 329
    const-string v1, "DeviceSetup"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "SetupComplete"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static disableBackgroundBlur(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 199
    const-class v0, Lcom/motorola/blur/setup/CreateBlurAccountService;

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 200
    return-void
.end method

.method public static disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "killApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 205
    .local v0, "disabled":Z
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v3, 0x2

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/4 v0, 0x1

    .line 213
    .end local v1    # "name":Landroid/content/ComponentName;
    :goto_1
    return v0

    .line 206
    .restart local v1    # "name":Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "name":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "killApp"    # Z

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "disabled":Z
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v3, 0x2

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    const/4 v0, 0x1

    .line 227
    .end local v1    # "name":Landroid/content/ComponentName;
    :goto_1
    return v0

    .line 220
    .restart local v1    # "name":Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "name":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static finishSetup(ZLandroid/content/Context;Z)V
    .locals 8
    .param p0, "success"    # Z
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "finishFromSetup"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 116
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "SetupUtility"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing setup success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    const-class v2, Lcom/motorola/blur/setup/HomeActivity;

    invoke-static {v0, p1, v2, v7}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 124
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->setSetupComplete(Landroid/content/Context;)V

    .line 125
    if-eqz p2, :cond_0

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.setupprovider.action.POST_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "postSetupIntent":Landroid/content/Intent;
    const-string v2, "setup_finish_package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    if-eqz p0, :cond_2

    .line 130
    const-string v2, "setup_state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    .end local v1    # "postSetupIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->isEmaraFlow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-string v2, "com.motorola.dataswitch"

    const-string v3, "com.motorola.dataswitch.LocaleSelect"

    invoke-static {v0, v2, v3, v6}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 145
    :cond_1
    const-string v2, "com.google.android.setupwizard"

    const-string v3, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-static {v0, v2, v3, v6}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 148
    const-class v2, Lcom/motorola/blur/setup/HomeActivity;

    invoke-static {v0, p1, v2, v7}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 150
    return-void

    .line 134
    .restart local v1    # "postSetupIntent":Landroid/content/Intent;
    :cond_2
    const-string v2, "setup_state"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static hideNavbarButton(Landroid/view/View;Z)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "hideBackButton"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    if-nez p0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 386
    :cond_0
    const/high16 v0, 0x1000000

    .line 387
    .local v0, "flags":I
    if-eqz p1, :cond_1

    .line 388
    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    .line 391
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 392
    .local v1, "provisioned":Z
    :goto_1
    if-nez v1, :cond_2

    .line 393
    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    .line 395
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .end local v1    # "provisioned":Z
    :cond_3
    move v1, v2

    .line 391
    goto :goto_1
.end method

.method public static isEmaraFlow(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 245
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "dataswitch_feature_enabled"

    invoke-static {v1, v4, v3}, Lcom/motorola/blur/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, "dataSwitchEnabled":I
    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 363
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 366
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static isReady2GoComplete(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "configured":Z
    const-string v2, "DeviceSetup"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 310
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 311
    const-string v2, "R2GConfigured"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 313
    :cond_0
    return v0
.end method

.method public static isReady2GoInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.dashwire.config"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isSetupHomeDisabled(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowGoogleSetup(Landroid/content/Context;)Z
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 284
    .local v0, "configShow":Z
    const-string v5, "defaults.xml"

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 286
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v5, "show_google_setup_wizard"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 287
    .local v1, "prefsShow":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isTabletFlow()Z
    .locals 2

    .prologue
    .line 317
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "productBrand":Ljava/lang/String;
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isVerizonFlow(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 252
    const-string v3, "ro.mot.build.customerid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "customerId":Ljava/lang/String;
    const-string v3, "verizon"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v2

    .line 272
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "setupFlowMap":Ljava/lang/String;
    const-string v3, "verizon"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 279
    .end local v1    # "setupFlowMap":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static numGoogleAccountPresent(Landroid/content/Context;)I
    .locals 3
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 292
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 293
    array-length v1, v0

    .line 295
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setPrivacyProfile(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 11
    .param p0, "profile"    # Ljava/lang/String;
    .param p1, "broadcast"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 440
    const/4 v5, 0x0

    .line 441
    .local v5, "isAdvanced":Z
    const/4 v1, 0x1

    .line 442
    .local v1, "captureKernalLogs":Z
    const/4 v0, 0x1

    .line 443
    .local v0, "captureCrashLogs":Z
    const/4 v2, 0x1

    .line 445
    .local v2, "captureMiscLogs":Z
    const-string v9, "PRIVACY_PROFILE_PREFS"

    invoke-virtual {p2, v9, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 446
    .local v7, "profilePref":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 448
    .local v8, "profilePrefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "BLUR_APP_STATS,MOT_APP_STATS,MOT_BRW_STATS_L1,MOT_BRW_STATS_L2,MOT_BRW_STATS_L3,MOT_CA_LOC,MOT_CA_STATS_L1,MOT_CA_STATS_L2,MOT_CA_STATS_L3,MOT_CA_STATS_L4,MOT_CA_STATS_L5,MOT_CA_STATS_L6,MOT_CALL_STATS_L1,MOT_CALL_STATS_L2,MOT_CONTACT_STATS_L2,MOT_CONTACTS_STATS_L2,MOT_DEVICE_ACCUM_STATS,MOT_DEVICE_KPI_L1,MOT_DEVICE_KPI_L2,MOT_DEVICE_KPI_L3,MOT_DEVICE_STATS,MOT_DEVICE_STATS_KBD,MOT_DEVICE_STATS_L1,MOT_DEVICE_STATS_L2,MOT_DEVICE_STATS_L3,MOT_DEVICE_STATS_MM,MOT_DEVICE_STATS_PERF,MOT_HOME_STATS_L1,MOT_HOME_STATS_L2,MOT_KPI_STATS_L1,MOT_MEDIA_STATS_L1,MOT_MEDIA_STATS_L2,MOT_MEDIA_STATS_L3,MOT_MEDIA_STATS_L4,MOT_MSG_STATS_L1,MOT_MSG_STATS_L2,MOT_MSG_STATS_L3,MOT_MSG_STATS_L4,MOT_DEVICE_STATS_CAM,CALL_PERF_STATS,CALL_PERF_DEVICE_LOC,CALL_PERF_HO_SUCCESS,CALL_PERF_STATS_SUCCESS,CALL_PERF_DATA_STATS,HO_STAT,BLUR_APP_USAGE,BROWSER_TIME_LANDSCAPE,BROWSER_TIME_PORTRAIT,BT_PAIRING_S,BT_PAIRING_F,BT_HFP_S,BT_HFP_F,BT_A2DP_S,BT_A2DP_F,BT_HID_S,BT_HID_F,BT_PBAP_S,BT_PBAP_F,BT_PAN_S,BT_PAN_F,MOT_DEVICE_STATS_BAT"

    .line 449
    .local v6, "profileBlacklist":Ljava/lang/String;
    const-string v9, "none"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 452
    const/4 v1, 0x0

    .line 453
    const/4 v0, 0x0

    .line 454
    const/4 v2, 0x0

    .line 464
    :cond_0
    :goto_0
    const-string v9, "kernel_log"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 465
    const-string v9, "crash_log"

    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 466
    const-string v9, "misc_log"

    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    const-string v9, "privacy_profile_name"

    invoke-interface {v8, v9, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 468
    const-string v9, "privacy_profile_tag_blacklist"

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    if-eqz p1, :cond_1

    .line 473
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 474
    .local v3, "cr":Landroid/content/ContentResolver;
    if-ne v5, v4, :cond_5

    .line 476
    .local v4, "gatherValue":I
    :goto_1
    const-string v9, "com.motorola.analytics.ada_accepted"

    invoke-static {v3, v9, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.motorola.analytics.ada_accepted"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.motorola.analytics.ada_accepted"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "privacy_profile_name"

    invoke-virtual {v9, v10, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "privacy_profile_tag_blacklist"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "kernel_log"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "crash_log"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "misc_log"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "gatherValue":I
    :cond_1
    return-void

    .line 455
    :cond_2
    const-string v9, "standard"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 456
    const-string v6, "MOT_CA_LOC,CALL_PERF_DEVICE_LOC,HO_STAT"

    goto :goto_0

    .line 457
    :cond_3
    const-string v9, "support"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 458
    const-string v6, "BLUR_APP_STATS,MOT_APP_STATS,MOT_CA_LOC,MOT_CONTACT_STATS_L2,MOT_CONTACTS_STATS_L2,MOT_DEVICE_ACCUM_STATS,MOT_DEVICE_KPI_L1,MOT_DEVICE_KPI_L2,MOT_DEVICE_KPI_L3,MOT_DEVICE_STATS_MM,MOT_HOME_STATS_L1,MOT_HOME_STATS_L2,MOT_KPI_STATS_L1,MOT_DEVICE_STATS_CAM,CALL_PERF_DEVICE_LOC,HO_STAT,BLUR_APP_USAGE,BROWSER_TIME_LANDSCAPE,BROWSER_TIME_PORTRAIT,BT_PAIRING_S,BT_PAIRING_F,BT_HFP_S,BT_HFP_F,BT_A2DP_S,BT_A2DP_F,BT_HID_S,BT_HID_F,BT_PBAP_S,BT_PBAP_F,BT_PAN_S,BT_PAN_F"

    goto :goto_0

    .line 459
    :cond_4
    const-string v9, "advanced"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 460
    const-string v6, ""

    .line 461
    const/4 v5, 0x1

    goto :goto_0

    .line 474
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static setSetupComplete(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    const-string v2, "DeviceSetup"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 323
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 324
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SetupComplete"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I

    .prologue
    .line 231
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 233
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 234
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 237
    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 239
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 240
    return-object v0
.end method

.method public static tabletSetupComplete(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 154
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 157
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-class v4, Lcom/motorola/blur/setup/HomeActivity;

    invoke-static {v2, p0, v4, v7}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 161
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->setSetupComplete(Landroid/content/Context;)V

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 168
    const-string v4, "SetupUtility"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "SetupLite::onActivityResult done invoking base Home app"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, "ctx":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.setupprovider.action.POST_SETUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, "postSetupIntent":Landroid/content/Intent;
    const-string v4, "setup_finish_package"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public static tabletSetupUpgradeComplete(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 184
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-class v2, Lcom/motorola/blur/setup/HomeActivity;

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 187
    const-string v2, "com.google.android.setupwizard"

    const-string v3, "com.google.android.setupwizard.SetupWizardActivity"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method
