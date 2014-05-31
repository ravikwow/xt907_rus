.class public Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;
.super Landroid/content/BroadcastReceiver;
.source "EncryptionReceiverFirstStart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disableAllSDEncryptionReceivers(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;-><init>(Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method private disableReceiverAndStartPinActivity(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startPinActivity"    # Z

    .prologue
    .line 71
    if-eqz p2, :cond_1

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.android.encryption.settings.START_PIN_ACTIVITY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "sdpin_result"

    invoke-static {p1, v2}, Lcom/android/settings/sdencryption/Util;->getSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 76
    const-string v2, "SDPIN_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$1;-><init>(Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method private encryptionUnsupported(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 107
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sdCardUnsupported()Z
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lcom/android/settings/sdencryption/MotoEnvironment;->getExternalStorageDirectories()[Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "availabeStorages":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 95
    const-string v2, "SDCARD"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sdencryption/MotoEnvironment;->getExternalStorageMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x0

    .line 100
    :goto_1
    return v2

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setupChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "myKey"    # Ljava/lang/String;
    .param p3, "otherKey"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v3, "pin_activity_start_required"

    invoke-static {p1, v3}, Lcom/android/settings/sdencryption/Util;->getSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "pinActivityRequired":Ljava/lang/String;
    const-string v0, "TRUE"

    .line 53
    .local v0, "myValue":Ljava/lang/String;
    invoke-static {p1, p2, v0}, Lcom/android/settings/sdencryption/Util;->setSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1, p3}, Lcom/android/settings/sdencryption/Util;->getSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "otherValue":Ljava/lang/String;
    const-string v3, "EncryptionReceiverFirstStart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "myKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", myValue=TRUE, otherKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", otherValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pinActivityRequired="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v3, "TRUE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TRUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "EncryptionReceiverFirstStart"

    const-string v4, "Starting pin activity and disabling receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->disableReceiverAndStartPinActivity(Landroid/content/Context;Z)V

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v3, "TRUE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TRUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    const-string v3, "EncryptionReceiverFirstStart"

    const-string v4, "Disabling receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->disableReceiverAndStartPinActivity(Landroid/content/Context;Z)V

    goto :goto_0

    .line 65
    :cond_1
    const-string v3, "EncryptionReceiverFirstStart"

    const-string v4, "Do nothing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeEncrMemorySysProperty()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 112
    .local v0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "memory_encr"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "mem_encr_key_type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->setEncryptionMemorySystemProperty(Ljava/util/Map;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    if-nez p2, :cond_0

    .line 24
    const-string v1, "EncryptionReceiverFirstStart"

    const-string v2, "Warning!!! BroadcastReceiver onReceive() getting null intent. Should not happened!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->sdCardUnsupported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->encryptionUnsupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    :cond_1
    const-string v1, "EncryptionReceiverFirstStart"

    const-string v2, "Warning!!!! SD Card or encryption is not supported on the device. Disabling ALL receivers for SD Encryption!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->writeEncrMemorySysProperty()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->disableAllSDEncryptionReceivers(Landroid/content/Context;)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "EncryptionReceiverFirstStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action PACKAGE_CHANGED receved from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v1, "com.google.android.setupwizard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.setupwizard"

    const-string v3, "com.motorola.blur.setup"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->setupChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "com.motorola.blur.setup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.motorola.blur.setup"

    const-string v3, "com.google.android.setupwizard"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->setupChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_4
    const-string v1, "EncryptionReceiverFirstStart"

    const-string v2, "Action PACKAGE_CHANGED ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
