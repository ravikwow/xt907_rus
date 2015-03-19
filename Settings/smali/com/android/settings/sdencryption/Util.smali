.class public final Lcom/android/settings/sdencryption/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static mMountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/sdencryption/Util;->mMountService:Landroid/os/storage/IMountService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelTimeAlert(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    const-string v0, "EncryptionSettingsUtil"

    const-string v1, "Cancel time alert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/sdencryption/EncryptionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const-string v1, "com.android.settings.sdencryption.TIMER_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 160
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 161
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 162
    return-void
.end method

.method public static cleanPostponePreferences(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    const-string v0, "request_policy_change_postponed_sdcard"

    invoke-static {p0, v0}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    const-string v0, "request_policy_change_postponed_indefinitely_sdcard"

    invoke-static {p0, v0}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public static cleanReceivedPoliciesFlags(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    const-string v0, "show_sdcard_policy_removed_dialog"

    invoke-static {p0, v0}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    const-string v0, "show_sdcard_policy_encryption_dialog"

    invoke-static {p0, v0}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public static cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public static disableEncryptionBootCompleteReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/sdencryption/Util$1;

    invoke-direct {v1, p0}, Lcom/android/settings/sdencryption/Util$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    return-void
.end method

.method public static getCMVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 313
    const-string v5, ""

    .line 314
    .local v5, "version":Ljava/lang/String;
    const/4 v2, 0x0

    .line 315
    .local v2, "scanner":Ljava/util/Scanner;
    new-instance v1, Ljava/io/File;

    const-string v6, "/system/etc/cm-version-file"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v5

    .line 321
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v4, "text":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 329
    .end local v3    # "scanner":Ljava/util/Scanner;
    .end local v4    # "text":Ljava/lang/StringBuilder;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :goto_2
    :try_start_2
    const-string v6, "EncryptionSettingsUtil"

    const-string v7, "Error! Cannot read CM file: /system/etc/cm-version-file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v6, "EncryptionSettingsUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "text":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 332
    if-eqz v3, :cond_4

    .line 333
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_0

    .line 332
    .end local v4    # "text":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_3

    .line 333
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_3
    throw v6

    .line 332
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "text":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_3

    .line 328
    .end local v4    # "text":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "text":Ljava/lang/StringBuilder;
    :cond_4
    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_0
.end method

.method public static getExpiredTimeForAlertSubscribe(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "request_policy_change_postponed_sdcard"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 107
    .local v0, "setTimeSdcard":J
    const-wide/16 v2, 0x0

    .line 109
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 110
    move-wide v2, v0

    .line 113
    :cond_0
    const-string v4, "EncryptionSettingsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The time from getExpiredTimeForAlertSubscribe():   time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-wide v2
.end method

.method public static getFormattedPostponeMsgString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hours"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 220
    .local v0, "formatter":Ljava/util/Formatter;
    new-array v3, v7, [Ljava/lang/Object;

    .line 222
    .local v3, "timeArgs":[Ljava/lang/Object;
    if-ne p1, v7, :cond_0

    const v4, 0x7f0b00dc

    .line 224
    .local v4, "toastMsgId":I
    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    .line 228
    invoke-virtual {v0, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 222
    .end local v1    # "message":Ljava/lang/String;
    .end local v4    # "toastMsgId":I
    :cond_0
    const v4, 0x7f0b00dd

    goto :goto_0
.end method

.method private static declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 4

    .prologue
    .line 206
    const-class v2, Lcom/android/settings/sdencryption/Util;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/sdencryption/Util;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 207
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 208
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 209
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/android/settings/sdencryption/Util;->mMountService:Landroid/os/storage/IMountService;

    .line 214
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settings/sdencryption/Util;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 211
    :cond_1
    :try_start_1
    const-string v1, "EncryptionSettingsUtil"

    const-string v3, "Error! Can\'t get mount service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasAppsAccessingStorage(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/sdencryption/Util;->hasAppsAccessingStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 168
    .local v0, "isSdCardInUse":Z
    const-string v1, "EncryptionSettingsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSdCardInUse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0
.end method

.method public static hasAppsAccessingStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extStoragePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 175
    :try_start_0
    invoke-static {}, Lcom/android/settings/sdencryption/Util;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 176
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const-string v6, "EncryptionSettingsUtil"

    const-string v7, "In function hasAppsAccessingStorage()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-nez v2, :cond_0

    .line 179
    const-string v6, "EncryptionSettingsUtil"

    const-string v7, "Error! In function hasAppsAccessingStorage(): mountService == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :goto_0
    return v5

    .line 183
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 184
    .local v4, "stUsers":[I
    if-eqz v4, :cond_2

    array-length v6, v4

    if-lez v6, :cond_2

    .line 185
    const-string v6, "EncryptionSettingsUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In function hasAppsAccessingStorage(): stUsers != null && stUsers.length > 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "stUsers":[I
    :catch_0
    move-exception v3

    .line 197
    .local v3, "re":Landroid/os/RemoteException;
    const-string v5, "EncryptionSettingsUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error! From hasAppsAccessingStorage(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_1
    const-string v5, "EncryptionSettingsUtil"

    const-string v6, "End function hasAppsAccessingStorage()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v5, 0x0

    goto :goto_0

    .line 190
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    .restart local v4    # "stUsers":[I
    :cond_2
    :try_start_1
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 191
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 193
    const-string v6, "EncryptionSettingsUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In function hasAppsAccessingStorage(): list != null && list.size() > 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static isSdCardMounted()Z
    .locals 5

    .prologue
    .line 305
    invoke-static {}, Lcom/android/settings/sdencryption/MotoEnvironment;->getExternalAltStorageState()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "status":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 307
    .local v0, "isSdCardMounted":Z
    :goto_0
    const-string v2, "EncryptionSettingsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status for the SD Card: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; isSdCardMounted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v0

    .line 306
    .end local v0    # "isSdCardMounted":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSdcardEncryptionPostponed(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 260
    const-string v5, "request_policy_change_postponed_indefinitely_sdcard"

    invoke-static {p0, v5}, Lcom/android/settings/sdencryption/Util;->getSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move v0, v3

    .line 263
    .local v0, "isSdcardNotPostponeIndefinately":Z
    :goto_0
    if-nez v0, :cond_1

    .line 264
    const-string v4, "EncryptionSettingsUtil"

    const-string v5, "Sdcard sync policy postponed indefinitely"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_1
    return v3

    .end local v0    # "isSdcardNotPostponeIndefinately":Z
    :cond_0
    move v0, v4

    .line 260
    goto :goto_0

    .line 268
    .restart local v0    # "isSdcardNotPostponeIndefinately":Z
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "request_policy_change_postponed_sdcard"

    const-wide/16 v7, -0x1

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 271
    .local v1, "postponeTimeSdcard":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_3

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-lez v5, :cond_2

    .line 274
    const-string v4, "EncryptionSettingsUtil"

    const-string v5, "SD card sync policy postponed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 277
    :cond_2
    const-string v3, "request_policy_change_postponed_sdcard"

    invoke-static {p0, v3}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    move v3, v4

    .line 280
    goto :goto_1
.end method

.method public static isSdcardEncryptionSyncRequired(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "esv":Lcom/android/settings/sdencryption/EncryptionStateVerificator;
    const-string v6, "request_policy_change_postponed_indefinitely_sdcard"

    invoke-static {p0, v6}, Lcom/android/settings/sdencryption/Util;->getSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move v1, v5

    .line 236
    .local v1, "isSdcardNotPostponeIndefinately":Z
    :goto_0
    if-nez v1, :cond_2

    .line 237
    const-string v5, "EncryptionSettingsUtil"

    const-string v6, "Sdcard sync policies postpone indefinitely"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    :goto_1
    return v4

    .end local v1    # "isSdcardNotPostponeIndefinately":Z
    :cond_1
    move v1, v4

    .line 233
    goto :goto_0

    .line 241
    .restart local v1    # "isSdcardNotPostponeIndefinately":Z
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "request_policy_change_postponed_sdcard"

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 245
    .local v2, "postponeTimeSdcard":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    .line 246
    const-string v6, "request_policy_change_postponed_sdcard"

    invoke-static {p0, v6}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    const-wide/16 v2, -0x1

    .line 250
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->isSDEncSyncRequired()Z

    move-result v6

    if-eqz v6, :cond_0

    cmp-long v6, v2, v8

    if-nez v6, :cond_0

    .line 251
    const-string v4, "EncryptionSettingsUtil"

    const-string v6, "Sdcard encription state not match policies or DB. Resync is required."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 252
    goto :goto_1
.end method

.method public static setSharedPreferencesLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 85
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method

.method public static setSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method public static stopEncryptionService(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 340
    const-string v0, "EncryptionSettingsUtil"

    const-string v1, "Sending intent to stop EncryptionSettingsService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    const-class v1, Lcom/android/settings/sdencryption/EncryptionSettingsService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 344
    return-void
.end method

.method public static subscribeForTimeAlert(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/settings/sdencryption/Util;->getExpiredTimeForAlertSubscribe(Landroid/content/Context;)J

    move-result-wide v0

    .line 94
    .local v0, "time":J
    const-string v2, "EncryptionSettingsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to subscribeForTimeAlert():  time - sys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 97
    invoke-static {p0, v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;J)V

    .line 99
    :cond_0
    return-void
.end method

.method public static subscribeForTimeAlert(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seconds"    # I

    .prologue
    .line 120
    const-string v2, "EncryptionSettingsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscribe for time alert with seconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 122
    .local v0, "sysTime":J
    invoke-static {p0, v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;J)V

    .line 123
    return-void
.end method

.method public static subscribeForTimeAlert(Landroid/content/Context;J)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-static {p0}, Lcom/android/settings/sdencryption/Util;->getExpiredTimeForAlertSubscribe(Landroid/content/Context;)J

    move-result-wide v0

    .line 132
    const-string v2, "EncryptionSettingsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to subscribeForTimeAlert()   sysTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";  oldTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 138
    :cond_0
    const-string v0, "EncryptionSettingsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribe for time alert with system time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/sdencryption/EncryptionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "com.android.settings.sdencryption.TIMER_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 145
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 148
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 149
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 150
    const-string v0, "EncryptionSettingsUtil"

    const-string v1, "Subscribed for the time alert success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method
