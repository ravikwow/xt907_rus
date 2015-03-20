.class public Lcom/motorola/messaging/provider/SettingsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingsDatabaseHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    iput-object p1, p0, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static getInsertSQLiteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 113
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method private loadHSS6Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 105
    const-string v0, "mms_retry_timeout1"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 106
    const-string v0, "mms_retry_timeout2"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 107
    const-string v0, "mms_retry_timeout3"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 108
    const-string v0, "mms_retry_timeout4"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 110
    return-void
.end method

.method private loadPrePhoenixSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 83
    const-string v0, "mms_country_code"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 84
    const-string v0, "mms_max_image_height"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 85
    const-string v0, "mms_max_image_width"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 86
    const-string v0, "mms_maximum_message_size"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 87
    const-string v0, "mms_non_ascii_file_name_support"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 88
    const-string v0, "mms_online_album"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 89
    const-string v0, "mms_user_agent"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 90
    const-string v0, "mms_x_wap_profile_url"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 91
    const-string v0, "sms_mms_show_network_timestamp"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 92
    const-string v0, "sms_mms_threshold"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 93
    const-string v0, "sms_pref_key_email_gateway_num"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 94
    const-string v0, "sms_pref_key_to_email"

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 96
    return-void
.end method

.method private saveSetting(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 119
    invoke-static {p1}, Lcom/motorola/messaging/settings/MessageSettings;->getStaticSettingByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "SettingsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    if-nez v0, :cond_1

    .line 126
    const-string v0, ""

    .line 129
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p2, v1, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 130
    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 132
    return-void
.end method


# virtual methods
.method public loadSettingsProvider(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "SettingsDatabaseHelper"

    const-string v2, "loadSettingsProvider()"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->getInsertSQLiteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->loadPrePhoenixSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 66
    invoke-direct {p0, v0}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->loadHSS6Settings(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 73
    :cond_1
    return-void

    .line 69
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 69
    :cond_2
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "SettingsDatabaseHelper"

    const-string v1, "onCreate - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/MmsApp;->initializeMessagingAppSettings(Landroid/content/Context;)V

    .line 44
    const-string v0, "CREATE TABLE IF NOT EXISTS settings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->loadSettingsProvider(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->setMessageSettingsProviderCreated()V

    .line 50
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "SettingsDatabaseHelper"

    const-string v1, "onCreate - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 136
    const-string v2, "SettingsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading message settings provider from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/messaging/MmsApp;->initializeMessagingAppSettings(Landroid/content/Context;)V

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    move v1, p2

    .line 146
    .local v1, "upgradeVersion":I
    :try_start_0
    invoke-static {p1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->getInsertSQLiteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 148
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 149
    const-string v2, "SettingsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->loadHSS6Settings(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const/4 v1, 0x2

    .line 155
    :cond_0
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 161
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->setMessageSettingsProviderCreated()V

    .line 162
    return-void

    .line 155
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 155
    :cond_2
    throw v2
.end method
