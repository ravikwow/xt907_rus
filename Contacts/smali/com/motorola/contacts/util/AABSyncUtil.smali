.class public Lcom/motorola/contacts/util/AABSyncUtil;
.super Ljava/lang/Object;
.source "AABSyncUtil.java"


# static fields
.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/util/AABSyncUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndLaunchAab(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    if-nez p0, :cond_1

    .line 60
    const-string v4, "AABSyncUtil"

    const-string v5, "checkAndLaunchAab(): context is null. Hence returning"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/motorola/contacts/util/AABSyncUtil;->getSharedPreferenceValue(Landroid/content/Context;)I

    move-result v3

    .line 67
    .local v3, "value":I
    if-nez v3, :cond_2

    .line 68
    const-string v4, "AABSyncUtil"

    const-string v5, "checkAndLaunchAab(): AABSYNC Package not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.motorola.aabsync"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 78
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_4

    .line 79
    const-string v4, "AABSyncUtil"

    const-string v5, "checkAndLaunchAab(): AABSync app is available, updating preference to ONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v4, Lcom/motorola/contacts/util/AABSyncUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "aablaunch"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v3, 0x1

    .line 96
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_1
    if-ne v3, v8, :cond_0

    .line 98
    const-string v4, "AABSyncUtil"

    const-string v5, "Found AABSync Package. Broadcasting com.motorola.aabsync.action.LAUNCH_AAB_FROM_CONTACTS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.motorola.aabsync.action.LAUNCH_AAB_FROM_CONTACTS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "aabIntent":Landroid/content/Intent;
    const-string v4, "com.motorola.permission.AAB_LAUNCH_BROADCAST_PERMISSION"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0    # "aabIntent":Landroid/content/Intent;
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :try_start_1
    const-string v4, "AABSyncUtil"

    const-string v5, "checkAndLaunchAab(): AABSync app is NOT available, updating preference to ZERO"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v4, Lcom/motorola/contacts/util/AABSyncUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "aablaunch"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    const/4 v3, 0x0

    goto :goto_1

    .line 87
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AABSyncUtil"

    const-string v5, "checkAndLaunchAab(): Inside NameNotFoundExeption.AABSync not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v4, "AABSyncUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndLaunchAab(): Exception Message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v4, Lcom/motorola/contacts/util/AABSyncUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "aablaunch"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getSharedPreferenceValue(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, "AABLaunch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/util/AABSyncUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    sget-object v0, Lcom/motorola/contacts/util/AABSyncUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "aablaunch"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isCurrentPackageAAB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentPackage"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "isAABPackage":Z
    if-nez p0, :cond_1

    .line 116
    const-string v2, "AABSyncUtil"

    const-string v3, "isCurrentPackageAAB(): Context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :goto_0
    const-string v2, "AABSyncUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCurrentPackageAAB(): isAABPackage returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v0

    .line 118
    :cond_1
    invoke-static {p0}, Lcom/motorola/contacts/util/AABSyncUtil;->getSharedPreferenceValue(Landroid/content/Context;)I

    move-result v1

    .line 119
    .local v1, "sharedPrefValue":I
    const-string v2, "AABSyncUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCurrentPackageAAB(): sharedPrefValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    const-string v2, "com.motorola.aabsync"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 123
    const/4 v0, 0x1

    goto :goto_0
.end method
