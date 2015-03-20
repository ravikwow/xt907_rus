.class public Lcom/motorola/messaging/transaction/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/DownloadManager$Result;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mAutoDownload:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mRoamingStateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/motorola/messaging/transaction/DownloadManager;->DEBUG:Z

    .line 48
    sget-boolean v1, Lcom/motorola/messaging/transaction/DownloadManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/motorola/messaging/transaction/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/transaction/DownloadManager$1;-><init>(Lcom/motorola/messaging/transaction/DownloadManager;)V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 91
    new-instance v0, Lcom/motorola/messaging/transaction/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/transaction/DownloadManager$2;-><init>(Lcom/motorola/messaging/transaction/DownloadManager;)V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 112
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 113
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;->ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/motorola/messaging/transaction/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mAutoDownload:Z

    .line 120
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/transaction/DownloadManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/DownloadManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mAutoDownload:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/messaging/transaction/DownloadManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/DownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mAutoDownload:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/messaging/transaction/DownloadManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/DownloadManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/transaction/DownloadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/DownloadManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;)Z
    .locals 1
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 135
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRoaming()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/messaging/transaction/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    return v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "roaming"    # Z

    .prologue
    .line 139
    const-string v2, "pref_key_mms_auto_retrieval"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->autoRetrievalDefaultPref()Z

    move-result v3

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    .local v0, "autoDownload":Z
    if-eqz v0, :cond_1

    .line 143
    const-string v2, "pref_key_mms_retrieval_during_roaming"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->autoRetrievalRoamingDefaultPref()Z

    move-result v3

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 146
    .local v1, "roamingAutoDownload":Z
    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    const/4 v2, 0x1

    .line 150
    .end local v1    # "roamingAutoDownload":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget-boolean v0, Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "DownloadManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;

    .line 132
    return-void
.end method


# virtual methods
.method protected getExpiry(Lcom/motorola/messaging/pdu/NotificationInd;)J
    .locals 2
    .param p1, "nInd"    # Lcom/motorola/messaging/pdu/NotificationInd;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/NotificationInd;->getExpiry()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState(Landroid/net/Uri;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 200
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "st"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 203
    .local v7, "cursor":Landroid/database/Cursor;
    const/16 v8, 0x80

    .line 204
    .local v8, "result":I
    if-eqz v7, :cond_2

    .line 206
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 208
    sget-boolean v0, Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState cursor, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    const/16 v0, 0x87

    if-eq v8, v0, :cond_1

    .line 219
    and-int/lit8 v8, v8, -0x5

    .line 224
    :cond_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 228
    :cond_2
    sget-boolean v0, Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 229
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_3
    return v8

    .line 224
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public isAuto()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mAutoDownload:Z

    return v0
.end method

.method public markState(Landroid/net/Uri;I)Lcom/motorola/messaging/transaction/DownloadManager$Result;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/motorola/messaging/pdu/NotificationInd;

    .line 160
    .local v9, "nInd":Lcom/motorola/messaging/pdu/NotificationInd;
    invoke-virtual {p0, v9}, Lcom/motorola/messaging/transaction/DownloadManager;->getExpiry(Lcom/motorola/messaging/pdu/NotificationInd;)J

    move-result-wide v7

    .line 162
    .local v7, "expiry":J
    sget-boolean v0, Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markState, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expiry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    cmp-long v0, v7, v0

    if-gez v0, :cond_1

    const/16 v0, 0x81

    if-ne p2, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/messaging/transaction/DownloadManager$3;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/transaction/DownloadManager$3;-><init>(Lcom/motorola/messaging/transaction/DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    sget-object v0, Lcom/motorola/messaging/transaction/DownloadManager$Result;->EXPIRED:Lcom/motorola/messaging/transaction/DownloadManager$Result;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v7    # "expiry":J
    .end local v9    # "nInd":Lcom/motorola/messaging/pdu/NotificationInd;
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v6

    .line 182
    .local v6, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load the message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/motorola/messaging/transaction/DownloadManager$Result;->LOAD_FAILURE:Lcom/motorola/messaging/transaction/DownloadManager$Result;

    goto :goto_0

    .line 185
    .end local v6    # "e":Lcom/motorola/messaging/util/MmsException;
    .restart local v7    # "expiry":J
    .restart local v9    # "nInd":Lcom/motorola/messaging/pdu/NotificationInd;
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mAutoDownload:Z

    if-nez v0, :cond_2

    .line 186
    or-int/lit8 p2, p2, 0x4

    .line 191
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 192
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "st"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 196
    sget-object v0, Lcom/motorola/messaging/transaction/DownloadManager$Result;->SUCCESS:Lcom/motorola/messaging/transaction/DownloadManager$Result;

    goto :goto_0
.end method
