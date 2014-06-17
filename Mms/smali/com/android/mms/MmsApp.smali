.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/MmsApp$MobileDataContentObserver;
    }
.end annotation


# static fields
.field private static sMmsApp:Lcom/android/mms/MmsApp;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryIso:Ljava/lang/String;

.field private mCountryListener:Landroid/location/CountryListener;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mObserver:Lcom/android/mms/MmsApp$MobileDataContentObserver;

.field private mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 319
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/MmsApp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/MmsApp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/MmsApp;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    .prologue
    .line 244
    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 304
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 308
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object v1
.end method

.method public getDrmManagerClient()Landroid/drm/DrmManagerClient;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 272
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    return-void
.end method

.method public onCreate()V
    .locals 19

    .prologue
    .line 87
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 88
    const-string v15, "Mms:strictmode"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 92
    new-instance v15, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v15}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v15}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v15

    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 96
    :cond_0
    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 99
    const v15, 0x7f050001

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 101
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 102
    .local v12, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v15, "pref_key_upgrade_jb_to_kk"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 103
    .local v13, "upgradedone":Z
    const-string v15, "Mms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "value of upgradedone flag is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez v13, :cond_3

    .line 105
    new-instance v8, Ljava/io/File;

    const-string v15, "/data/data/com.motorola.messaging/shared_prefs/com.motorola.messaging_preferences.xml"

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v8, "preffile":Ljava/io/File;
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 110
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 112
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v11, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "line":Ljava/lang/String;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 116
    .local v9, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    if-eqz v7, :cond_e

    .line 117
    const-string v15, "Mms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "READ "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v15, "pref_key_message_group_type"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 119
    const/16 v15, 0x3e

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 120
    .local v6, "index":I
    add-int/lit8 v15, v6, 0x1

    add-int/lit8 v16, v6, 0x2

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 121
    .local v14, "value":Ljava/lang/String;
    const-string v15, "Mms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pref_key_message_group_type : 4.1.2 preference is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 125
    const-string v15, "pref_key_mms_group_mms"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    :goto_1
    const-string v15, "Mms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MessagingPreferenceActivity.GROUP_MMS_MODE : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "pref_key_mms_group_mms"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v6    # "index":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 128
    .restart local v6    # "index":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_2
    const-string v15, "pref_key_mms_group_mms"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 173
    .end local v6    # "index":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 174
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    if-eqz v4, :cond_3

    .line 178
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "preffile":Ljava/io/File;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_4
    const-string v15, "country_detector"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/CountryDetector;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    .line 192
    new-instance v15, Lcom/android/mms/MmsApp$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/MmsApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    .line 202
    new-instance v15, Lcom/android/mms/util/PduLoaderManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/mms/util/PduLoaderManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    .line 203
    new-instance v15, Lcom/android/mms/util/ThumbnailManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/mms/util/ThumbnailManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    .line 206
    new-instance v15, Lcom/android/mms/MmsApp$MobileDataContentObserver;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mms/MmsApp$MobileDataContentObserver;-><init>(Lcom/android/mms/MmsApp;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/MmsApp;->mObserver:Lcom/android/mms/MmsApp$MobileDataContentObserver;

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "mobile_data"

    invoke-static/range {v16 .. v16}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MmsApp;->mObserver:Lcom/android/mms/MmsApp$MobileDataContentObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 213
    invoke-static/range {p0 .. p0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 214
    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 216
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionManager;->init(Landroid/content/Context;)V

    .line 217
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/NetworkManager;->init(Landroid/content/Context;)V

    .line 218
    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 219
    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 220
    invoke-static/range {p0 .. p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 221
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->init(Landroid/content/Context;)V

    .line 222
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MOSmsManager;->init(Landroid/content/Context;)V

    .line 223
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 226
    return-void

    .line 133
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "preffile":Ljava/io/File;
    .restart local v9    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    const-string v15, "pref_key_vibrate"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 134
    const-string v15, "pref_key_vibrate"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 176
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v15

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 177
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v4, :cond_5

    .line 178
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 182
    :cond_5
    :goto_6
    throw v15

    .line 135
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :cond_6
    :try_start_7
    const-string v15, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 136
    const-string v15, "pref_key_mms_retrieval_during_roaming"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 137
    :cond_7
    const-string v15, "pref_key_enable_notifications"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 138
    const-string v15, "pref_key_enable_notifications"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 139
    :cond_8
    const-string v15, "pref_key_enable_signature"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 140
    const-string v15, "pref_key_enable_signature"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 141
    :cond_9
    const-string v15, "pref_key_mms_auto_retrieval"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 142
    const-string v15, "pref_key_mms_auto_retrieval"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 143
    :cond_a
    const-string v15, "pref_key_message_signature"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 144
    const/16 v15, 0x3e

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x3c

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 145
    .restart local v14    # "value":Ljava/lang/String;
    const-string v15, "pref_key_message_signature"

    invoke-interface {v9, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 146
    .end local v14    # "value":Ljava/lang/String;
    :cond_b
    const-string v15, "pref_key_ringtone"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 147
    const/16 v15, 0x3e

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x3c

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 148
    .restart local v14    # "value":Ljava/lang/String;
    const-string v15, "pref_key_ringtone"

    invoke-interface {v9, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 151
    .end local v14    # "value":Ljava/lang/String;
    :cond_c
    const-string v15, "pref_key_delivery_reports"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 152
    const-string v15, "pref_key_mms_delivery_reports"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v15, "pref_key_sms_delivery_reports"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 154
    :cond_d
    const-string v15, "MaxMessagesPerThread"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 155
    const-string v15, "="

    invoke-virtual {v7, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x2

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 156
    .restart local v14    # "value":Ljava/lang/String;
    const-string v15, "Mms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pref_key_sms_delete_limit="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 158
    :try_start_8
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/mms/util/Recycler$SmsRecycler;->setMessageLimit(Landroid/content/Context;I)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 159
    :catch_1
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 168
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "value":Ljava/lang/String;
    :cond_e
    const-string v15, "pref_key_upgrade_jb_to_kk"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    const-string v15, "Mms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MessagingPreferenceActivity.UPGRADE_JB_KK : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "pref_key_upgrade_jb_to_kk"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 177
    if-eqz v5, :cond_f

    .line 178
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_f
    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 182
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 180
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 181
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 183
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 180
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .local v2, "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 181
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 181
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 186
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :cond_10
    const-string v15, "Mms"

    const-string v16, "File not found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 176
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v15

    goto/16 :goto_5

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v15

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 173
    :catch_5
    move-exception v2

    goto/16 :goto_3

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 258
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    invoke-virtual {v0}, Lcom/android/mms/util/PduLoaderManager;->onLowMemory()V

    .line 259
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/mms/util/ThumbnailManager;->onLowMemory()V

    .line 260
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mObserver:Lcom/android/mms/MmsApp$MobileDataContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    return-void
.end method
