.class public Lcom/motorola/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 53
    iput-object p1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private loadAllowEditingPreloadedClass3APNFeatureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1238
    const/4 v0, 0x0

    .line 1240
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1241
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1242
    const-string v2, "allow_editing_class3_apn"

    const v3, 0x7f03005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1247
    if-eqz v0, :cond_0

    .line 1248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v1

    .line 1245
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in inserting 37877-Allow editing class3 apn  feature settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1247
    if-eqz v0, :cond_0

    .line 1248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1247
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1248
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1247
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadAssistedDialingSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 633
    const/4 v1, 0x0

    .line 635
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 637
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 638
    const-string v2, "assisted_dialing_state"

    const v3, 0x7f03001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    const-string v2, "cur_country_updated_by_user"

    const v3, 0x7f030020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 640
    const-string v2, "cur_country_mcc"

    const v3, 0x7f030022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    const-string v2, "cur_country_code"

    const v3, 0x7f030023

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    const-string v2, "cur_country_name"

    const v3, 0x7f04000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    const-string v2, "cur_country_idd"

    const v3, 0x7f04000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    const-string v2, "cur_country_ndd"

    const v3, 0x7f04000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    const-string v2, "cur_country_area_code"

    const v3, 0x7f04000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 646
    const-string v2, "cur_country_mdn_len"

    const v3, 0x7f030024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    const-string v2, "ref_country_mcc"

    const v3, 0x7f030022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    const-string v2, "ref_country_code"

    const v3, 0x7f030023

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 649
    const-string v2, "ref_country_name"

    const v3, 0x7f04000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    const-string v2, "ref_country_idd"

    const v3, 0x7f04000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    const-string v2, "ref_country_ndd"

    const v3, 0x7f04000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    const-string v2, "ref_country_area_code"

    const v3, 0x7f04000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    const-string v2, "ref_country_mdn_len"

    const v3, 0x7f030024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    const-string v2, "multiple_pdp_isenabled"

    const v3, 0x7f030043

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    const-string v2, "dun_nat_enabled"

    const v3, 0x7f030045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    const-string v2, "tether_reverse_nat_enabled"

    const v3, 0x7f030046

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 665
    :cond_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 658
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssistedDialing Settings, Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadBackGroundDataBackUpSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 814
    const/4 v2, 0x0

    .line 815
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 818
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 819
    const-string v3, "back_ground_data_backup_by_datamanager"

    const v4, 0x7f030044

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    if-eqz v2, :cond_0

    .line 827
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 829
    :cond_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadBackGroundDataBackUpSettings, Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadBluetoothMFBSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 834
    const/4 v2, 0x0

    .line 836
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT OR REPLACE INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 837
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 838
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "MotorolaSettingsProvider"

    const-string v4, "loading bluetooth MFB settings"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string v3, "bluetooth_mfb_enabled_when_locked"

    const v4, 0x7f030047

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 848
    :cond_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inserting into BluetoothMFB Setting exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadCallSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 457
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 458
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    const-string v2, "call_connect_tone"

    const v3, 0x7f030014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    const-string v2, "network_lost_tone"

    const v3, 0x7f030015

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    const-string v2, "calling_33860_enabled"

    const v3, 0x7f030037

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    const-string v2, "calling_gsm_ad_enabled"

    const v3, 0x7f030038

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 464
    const-string v2, "fid_34387_multimode"

    const v3, 0x7f030039

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    const-string v2, "vm_vvm_selection"

    const v3, 0x7f03004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    const-string v2, "vm_vvm_roaming_selection"

    const v3, 0x7f03004c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 474
    :cond_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadCallWaitingVolumeSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 975
    const-string v0, "MotorolaSettingsProvider"

    const-string v1, "loadCallWaitingVolumeSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v1, 0x0

    .line 978
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 979
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 981
    const-string v2, "call_waiting_volume"

    const v3, 0x7f030049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_0
    if-eqz v1, :cond_0

    .line 987
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 988
    :cond_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 984
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadCdmaSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 613
    const/4 v2, 0x0

    .line 615
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 617
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 618
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "restriction_lock"

    const v4, 0x7f030026

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    const-string v3, "dialup_modem_restriction"

    const v4, 0x7f03002b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 628
    :cond_0
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadContactsSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 751
    const/4 v2, 0x0

    .line 753
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 754
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 756
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "ice_isenabled"

    const v4, 0x7f03003a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 757
    const-string v3, "sim_33859_isenabled"

    const v4, 0x7f03003b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    const-string v3, "bua_isenabled"

    const v4, 0x7f03003d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 766
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 768
    :cond_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadContactsSettings, Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadDataOffloadAdditionalSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1327
    const/4 v0, 0x0

    .line 1329
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1330
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1331
    const-string v2, "wifi_offload_auto_start"

    const v3, 0x7f030055

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1335
    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v1

    .line 1333
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error inserting Additional Data offload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1335
    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1335
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1336
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1335
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadDataOffloadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1143
    const/4 v0, 0x0

    .line 1145
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1146
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1147
    const-string v2, "data_offload_enabled"

    const v3, 0x7f030053

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1148
    const-string v2, "wifi_offload_flag"

    const v3, 0x7f030054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1152
    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1149
    :catch_0
    move-exception v1

    .line 1150
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in inserting Data offload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1152
    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1152
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1153
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1152
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadDataRoamingAccessSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 1054
    const/4 v0, 0x0

    .line 1056
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1057
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1058
    const v2, 0x7f03004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1059
    const-string v2, "data_roaming_access_feature_enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    const-string v1, "flag_allow_access_only_for_this_trip"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :goto_0
    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1070
    :cond_0
    return-void

    .line 1064
    :catch_0
    move-exception v1

    .line 1065
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in inserting Data roaming access settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadDataSwichFeatureEnableSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1093
    const/4 v1, 0x0

    .line 1095
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO settings(\'name\',\'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1097
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1098
    const-string v2, "dataswitch_feature_enabled"

    const v3, 0x7f03004f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :goto_0
    if-eqz v1, :cond_0

    .line 1104
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1106
    :cond_0
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting Data Switch feature enable setting exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadDemoModeSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1195
    const/4 v0, 0x0

    .line 1197
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1199
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1200
    const-string v2, "demo_mode_enabled"

    const v3, 0x7f030059

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1202
    const-string v2, "demo_video_path_in_system"

    const v3, 0x7f040019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1204
    const-string v2, "demo_video_path_in_sdcard"

    const v3, 0x7f04001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1207
    const-string v2, "demo_video_download_uri"

    const v3, 0x7f04001b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1213
    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1210
    :catch_0
    move-exception v1

    .line 1211
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in loadDemoModeSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1213
    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1213
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1214
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1213
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadDownloadWallpaperSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 793
    const/4 v2, 0x0

    .line 796
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 797
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 798
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "enable_download_wallpaper"

    const/high16 v4, 0x7f050000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    if-eqz v2, :cond_0

    .line 807
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 809
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper Download Settings, Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    if-eqz v2, :cond_0

    .line 807
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 806
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 807
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v3
.end method

.method private loadEntitlementSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 388
    const-string v2, "entitlement_check"

    const v3, 0x7f030031

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    const-string v2, "usb_entitlement_check"

    const v3, 0x7f030032

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 396
    :cond_0
    return-void

    .line 390
    :catch_0
    move-exception v1

    .line 391
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error inserting into EntitlementSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadFullChargeSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 731
    const/4 v2, 0x0

    .line 732
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 735
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 737
    const-string v3, "full_charge_notification_enable"

    const v4, 0x7f030034

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    if-eqz v2, :cond_0

    .line 745
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 747
    :cond_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFullChargeSettings, Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadGeoTagSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 692
    const/4 v3, 0x0

    .line 694
    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 695
    iget-object v4, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 696
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f030048

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 698
    .local v1, "geoTaggingFeatureEnabled":I
    const-string v4, "geo_tagging_feature_enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 699
    const/4 v4, 0x1

    if-ne v4, v1, :cond_0

    .line 700
    const-string v4, "share_pic_loc_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v1    # "geoTaggingFeatureEnabled":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 707
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 709
    :cond_1
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MotorolaSettingsProvider"

    const-string v5, "Error in inserting Geo location settings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadInternationalDataRoamingSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 1254
    const/4 v0, 0x0

    .line 1256
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1258
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1259
    const-string v2, "roaming_plmn_between_carriers_enabled"

    const v3, 0x7f03005d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1261
    const-string v2, "roaming_plmn_table"

    const v3, 0x7f04001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1263
    const-string v2, "black_list_roaming_plmn_table"

    const v3, 0x7f04001e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1265
    const-string v2, "roaming_mcc_table"

    const v3, 0x7f04001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    :goto_0
    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1273
    :cond_0
    return-void

    .line 1267
    :catch_0
    move-exception v1

    .line 1268
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error inserting into InternationalDataRoamingSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadKbdBacklightSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1029
    const/4 v1, 0x0

    .line 1031
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1034
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1036
    const-string v2, "kbd_backlight_control_mode"

    const v3, 0x7f03005e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1038
    const-string v2, "kbd_backlight_brightness"

    const v3, 0x7f03005f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1040
    const-string v2, "kbd_backlight_timeout"

    const v3, 0x7f030060

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1049
    :cond_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings. Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadLangKbdSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1009
    const/4 v1, 0x0

    .line 1011
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1014
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1015
    const-string v2, "keyboard_layout_external"

    const v3, 0x7f040018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :goto_0
    if-eqz v1, :cond_0

    .line 1022
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1024
    :cond_0
    return-void

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings. Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadLocationProxySettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 522
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 524
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 526
    const-string v2, "supl_carrier_settings_enabled"

    const v3, 0x7f030001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    const-string v2, "hslp_address"

    const/high16 v3, 0x7f040000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    const-string v2, "supl_pref_apn"

    const v3, 0x7f040001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    const-string v2, "supl_alt_apns"

    const v3, 0x7f040002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    const-string v2, "supl_dm_enabled"

    const v3, 0x7f030002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    const-string v2, "supl_dm_app_id"

    const v3, 0x7f040006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    const-string v2, "supl_dm_provider_id"

    const v3, 0x7f040003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-string v2, "supl_dm_name"

    const v3, 0x7f040004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    const-string v2, "supl_dm_addr_type"

    const v3, 0x7f040005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 550
    :cond_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadLocationSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 670
    const/4 v2, 0x0

    .line 672
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 673
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 675
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "agps_feature_enabled"

    const v4, 0x7f03002d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    const-string v3, "agps_gpsone_user_plane"

    const v4, 0x7f03005a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    const-string v3, "gpsone_xtra_downloadable"

    const v4, 0x7f03005b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 685
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 687
    :cond_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    const-string v4, "Error inserting into LocationSettings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadMMSApnEnableSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1076
    const/4 v1, 0x0

    .line 1078
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1080
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1081
    const-string v2, "loadMMSApnEnableSetting"

    const-string v3, "Loading MMS APN enable setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-string v2, "enable_mms_when_data_disabled"

    const v3, 0x7f03004e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    if-eqz v1, :cond_0

    .line 1088
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1090
    :cond_0
    return-void

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inserting MMS APN enable setting exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadMessagingSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 556
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 558
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 565
    const-string v2, "vm_number_cdma"

    const v3, 0x7f040007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 576
    :cond_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Messaging Settings, Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadNamCdmaSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1160
    const/4 v0, 0x0

    .line 1162
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1163
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1164
    const-string v2, "nam_cdma_settings_enabled"

    const v3, 0x7f030057

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1168
    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v1

    .line 1166
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in inserting NAM CDMA settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1168
    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1168
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1169
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1168
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadNetworkEnableSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 1126
    const/4 v0, 0x0

    .line 1128
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1129
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1130
    const-string v2, "network_setting_on_boot"

    const v3, 0x7f030051

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1131
    const-string v2, "mobile_data_disable"

    const v3, 0x7f030052

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :goto_0
    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1138
    :cond_0
    return-void

    .line 1132
    :catch_0
    move-exception v1

    .line 1133
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in inserting Network Setting Menu settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadNfcUiVzwSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1278
    const/4 v0, 0x0

    .line 1280
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1281
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1282
    const-string v2, "nfcui_vzw_enabled"

    const v3, 0x7f030061

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1286
    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1283
    :catch_0
    move-exception v1

    .line 1284
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in inserting NFCUI_VZW_ENABLED settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1286
    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1286
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1287
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1286
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadPowerSaverSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1176
    const/4 v0, 0x0

    .line 1178
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1180
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1181
    const-string v2, "power_saver_enabled"

    const v3, 0x7f030058

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1186
    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in inserting Power saver settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1186
    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1187
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1186
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadQuickSmsSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 853
    const/4 v2, 0x0

    .line 855
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 856
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 858
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "qsms_enable_text_message_reply"

    const v4, 0x7f030025

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 863
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 864
    :cond_0
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadRingerSwitchSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 773
    const/4 v2, 0x0

    .line 774
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 777
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 778
    const-string v3, "ftr_ringer_switch_enable"

    const v4, 0x7f030042

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 788
    :cond_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadRingerSwitchSettings, Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadScreenLockSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 479
    const/4 v2, 0x0

    .line 481
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 483
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 484
    .local v1, "r":Landroid/content/res/Resources;
    const-string v3, "screen_lock"

    const v4, 0x7f04000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v3, "lock_type"

    const v4, 0x7f03000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v3, "lock_timer"

    const v4, 0x7f03000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    const-string v3, "lock_pin_current_failed_attempts"

    const v4, 0x7f030011

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v1    # "r":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 502
    :cond_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadServiceResetSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 371
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 372
    iget-object v3, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 373
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "service_reset"

    const v4, 0x7f030003

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 380
    :cond_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MotorolaSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting into settings And Error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 607
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 609
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadLocationProxySettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadMessagingSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadTTSSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadScreenLockSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadLocationSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadGeoTagSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 269
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 270
    .local v0, "activePhoneType":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 271
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadCdmaSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadCallSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadAssistedDialingSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadUserAcceptMotoAgreementSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadFullChargeSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadContactsSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 288
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadRingerSwitchSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDownloadWallpaperSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadBackGroundDataBackUpSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 298
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadBluetoothMFBSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadEntitlementSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadQuickSmsSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSmartDialerSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDataRoamingAccessSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadLangKbdSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadKbdBacklightSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadMMSApnEnableSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDataSwichFeatureEnableSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSyncConnectValueSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadNetworkEnableSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDataOffloadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 335
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadServiceResetSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 338
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadNamCdmaSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadPowerSaverSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDemoModeSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadAllowEditingPreloadedClass3APNFeatureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 350
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadInternationalDataRoamingSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadNfcUiVzwSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSprintDataOffloadFlexSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSmsOverImsSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDataOffloadAdditionalSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    return-void
.end method

.method private loadSmartDialerSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 993
    const/4 v1, 0x0

    .line 995
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 996
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 997
    const-string v2, "smartdialer_language_code"

    const v3, 0x7f030040

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1004
    :cond_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadSmsOverImsSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1310
    const/4 v1, 0x0

    .line 1313
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1315
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1316
    const-string v2, "enable_mo_sms_over_ims"

    const v3, 0x7f030062

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    :goto_0
    if-eqz v1, :cond_0

    .line 1321
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1322
    :cond_0
    return-void

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadSprintDataOffloadFlexSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1294
    const/4 v0, 0x0

    .line 1296
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1297
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1298
    const-string v2, "sprint_offload_flex"

    const v3, 0x7f030056

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1302
    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1299
    :catch_0
    move-exception v1

    .line 1300
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in inserting SPRINT_OFFLOAD_FLEX settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1302
    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1302
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1303
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1302
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadSyncConnectValueSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1109
    const/4 v1, 0x0

    .line 1111
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO settings(\'name\',\'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1113
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1114
    const-string v2, "dataswitch_sync_connect_value"

    const v3, 0x7f030050

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_0
    if-eqz v1, :cond_0

    .line 1120
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1122
    :cond_0
    return-void

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting sync connect value setting exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 402
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 404
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 405
    const-string v2, "double_tap"

    const v3, 0x7f040017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    const-string v2, "eri_alert_sounds"

    const v3, 0x7f03001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    const-string v2, "eri_text_banner"

    const v3, 0x7f03001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    const-string v2, "software_update_alert"

    const v3, 0x7f030018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string v2, "fid_33463_enabled"

    const v3, 0x7f030041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    const-string v2, "viewserver_in_securebuild_enabled"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    const-string v2, "call_waiting_volume"

    const v3, 0x7f030049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    const-string v2, "check_cfu_poweron"

    const v3, 0x7f03004a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    const-string v2, "wifi_networks_secure_available_notification_on"

    const v3, 0x7f050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_1
    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 436
    :cond_0
    return-void

    .line 425
    :cond_1
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadTTSSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 585
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 587
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 589
    const-string v2, "tts_caller_id_readout"

    const v3, 0x7f030006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 594
    :try_start_1
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTS Settings, Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 598
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0
.end method

.method private loadUserAcceptMotoAgreementSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 717
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 719
    const-string v2, "user_need_accept_moto_agreement"

    const v3, 0x7f03002f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_0
    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 726
    :cond_0
    return-void

    .line 720
    :catch_0
    move-exception v1

    .line 721
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error inserting into LocationSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadWiFiDirectDefaultName(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 1221
    const/4 v0, 0x0

    .line 1223
    :try_start_0
    const-string v1, "INSERT INTO settings(\'name\', \'value\') values (?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1225
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1226
    const-string v2, "wifi_p2p_device_name"

    const v3, 0x7f04001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1231
    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v1

    .line 1229
    :try_start_2
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "Error in loadWiFiDirectDefaultName"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1231
    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1232
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    .line 1231
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private loadWifiSecureNetworksNotification(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 441
    :try_start_0
    const-string v0, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 442
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 443
    const-string v2, "wifi_networks_secure_available_notification_on"

    const v3, 0x7f050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_1
    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 450
    :cond_0
    return-void

    .line 443
    :cond_1
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 869
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 870
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 871
    return-void
.end method

.method private renewContactSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 876
    const/4 v1, 0x0

    .line 878
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "DELETE FROM settings WHERE name=? ;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 879
    const-string v2, "ice_isenabled"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 880
    const-string v2, "sim_33859_isenabled"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 882
    const-string v2, "bua_isenabled"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    if-eqz v1, :cond_0

    .line 887
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 889
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadContactsSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 890
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error remove from settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private renewMotorolaSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 895
    const/4 v1, 0x0

    .line 897
    :try_start_0
    const-string v0, "DELETE FROM settings WHERE name=? ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 898
    const-string v0, "device_keyboard_feature_enabled"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 899
    const-string v0, "volume_threshold_precentage"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 900
    const-string v0, "volume_monitor_interval"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 901
    const-string v0, "call_auto_answer"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 902
    const-string v0, "notification_led_enabled"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 903
    const-string v0, "screen_off_timeout_max"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 904
    const-string v0, "lock_timer_max"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 905
    const-string v0, "mms_uaprof_tagname"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 906
    const-string v0, "mms_accept_charset"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 907
    const-string v0, "mms_http_line1key"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 908
    const-string v0, "country_code"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 909
    const-string v0, "mms_http_parameters"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 910
    const-string v0, "mms_mml_server"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 911
    const-string v0, "sms_outgoing_check_interval_ms"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 912
    const-string v0, "sms_outgoing_check_max_count"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 913
    const-string v0, "mms_on_reply_all"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 914
    const-string v0, "mms_wap_reject_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 915
    const-string v0, "mms_manual_retry_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 916
    const-string v0, "mms_notify_wap_mmsc_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 917
    const-string v0, "mms_transid_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 918
    const-string v0, "sms_mms_delivery_report_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 919
    const-string v0, "sms_mms_signature_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 920
    const-string v0, "sms_mms_callback_number_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 921
    const-string v0, "sms_priority_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 922
    const-string v0, "sms_chars_remaining_before_counter_shown"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 923
    const-string v0, "sms_mms_message_details_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 924
    const-string v0, "sms_mms_error_codes_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 925
    const-string v0, "sms_mms_mo_memory_low_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 926
    const-string v0, "sms_mms_mt_memory_low_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 927
    const-string v0, "sms_force_7bit_encoding"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 928
    const-string v0, "mms_reply_all_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 929
    const-string v0, "sms_mms_max_num_recipients_availability"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 930
    const-string v0, "sms_mms_max_num_recipients"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 931
    const-string v0, "location_restriction"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 932
    const-string v0, "incoming_call_restriction"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 933
    const-string v0, "outgoing_call_restriction"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 934
    const-string v0, "incoming_message_restriction"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 935
    const-string v0, "ref_country_updated_by_user"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 936
    const-string v0, "need_lock_default_apn"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 937
    const-string v0, "ftr_full_charge_notification_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 938
    const-string v0, "settings_sim_network_lock_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 939
    const-string v0, "settings_display_sim_id_enable"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 940
    const-string v0, "deblur_isenabled"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 941
    const-string v0, "preload_carrier"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 942
    const-string v0, "default_contact_account_name"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 943
    const-string v0, "default_contact_account_type"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 944
    const-string v0, "contact_additional_menu_intent"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 945
    const-string v0, "contact_additional_menu_intent_type"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 946
    const-string v0, "contact_additional_menu_order"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 947
    const-string v0, "contact_additional_menu_title"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 948
    const-string v0, "contact_additional_menu_icon"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 949
    const-string v0, "contact_additional_menu_res_package"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 950
    const-string v0, "deblur_isenabled"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 951
    const-string v0, "preload_carrier"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 952
    const-string v0, "outgoing_message_restriction"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 954
    const-string v0, "mms_auto_retry_attempts"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 955
    const-string v0, "mms_auto_retry_interval"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 959
    const-string v0, "mms_country_code"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 960
    const-string v0, "sms_mms_threshold"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 961
    const-string v0, "mms_non_ascii_file_name_support"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 962
    const-string v0, "sms_pref_key_to_email"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V

    .line 963
    const-string v0, "sms_pref_key_emailgateway_num"

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/providers/settings/DatabaseHelper;->removeSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_0
    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 970
    :cond_0
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 966
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error remove from settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public loadDefaults(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 244
    const/4 v1, 0x0

    .line 247
    :try_start_0
    const-string v2, "INSERT INTO settings(\'name\', \'value\') values (?, ?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 249
    const/4 v2, 0x1

    const-string v3, "test_attribute"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 250
    const/4 v2, 0x2

    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 258
    :cond_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v2, "MotorolaSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting into settings And Error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    const-string v0, "CREATE TABLE %s ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE ON CONFLICT REPLACE, value TEXT);"

    .line 67
    .local v0, "fmt":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "settings"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDefaults(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    new-instance v1, Lcom/motorola/flex/OverlayHelper;

    iget-object v2, p0, Lcom/motorola/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/motorola/flex/OverlayHelper;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, "oh":Lcom/motorola/flex/OverlayHelper;
    const-string v2, "settings"

    invoke-virtual {v1, p1, v2}, Lcom/motorola/flex/OverlayHelper;->apply(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 88
    move v0, p2

    .line 90
    .local v0, "upgradeVersion":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadGeoTagSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadQuickSmsSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->renewContactSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadCallWaitingVolumeSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadLangKbdSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadEntitlementSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    const/4 v0, 0x2

    .line 101
    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 102
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSmartDialerSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    const/4 v0, 0x3

    .line 108
    :cond_1
    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    .line 109
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDataRoamingAccessSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDataOffloadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    const/4 v0, 0x4

    .line 116
    :cond_2
    const/4 v1, 0x4

    if-ne v1, v0, :cond_3

    .line 117
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadServiceResetSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    const/4 v0, 0x5

    .line 123
    :cond_3
    const/4 v1, 0x5

    if-ne v1, v0, :cond_4

    .line 124
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadPowerSaverSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    const/4 v0, 0x6

    .line 130
    :cond_4
    const/4 v1, 0x6

    if-ne v1, v0, :cond_5

    .line 131
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDemoModeSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    const/4 v0, 0x7

    .line 137
    :cond_5
    const/4 v1, 0x7

    if-ne v1, v0, :cond_6

    .line 138
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->renewMotorolaSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    const/16 v0, 0x8

    .line 144
    :cond_6
    const/16 v1, 0x8

    if-ne v1, v0, :cond_7

    .line 145
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadLocationSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 146
    const/16 v0, 0x9

    .line 151
    :cond_7
    const/16 v1, 0x9

    if-ne v1, v0, :cond_8

    .line 152
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadWifiSecureNetworksNotification(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    const/16 v0, 0xa

    .line 159
    :cond_8
    const/16 v1, 0xa

    if-ne v1, v0, :cond_9

    .line 160
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadWiFiDirectDefaultName(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 161
    const/16 v0, 0xb

    .line 166
    :cond_9
    const/16 v1, 0xb

    if-ne v1, v0, :cond_a

    .line 167
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadAllowEditingPreloadedClass3APNFeatureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    const/16 v0, 0xc

    .line 172
    :cond_a
    const/16 v1, 0xc

    if-ne v1, v0, :cond_b

    .line 173
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadInternationalDataRoamingSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    const/16 v0, 0xd

    .line 179
    :cond_b
    const/16 v1, 0xd

    if-ne v1, v0, :cond_c

    .line 180
    const/16 v0, 0xe

    .line 185
    :cond_c
    const/16 v1, 0xe

    if-ne v1, v0, :cond_d

    .line 186
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadKbdBacklightSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    const/16 v0, 0xf

    .line 192
    :cond_d
    const/16 v1, 0xf

    if-ne v1, v0, :cond_e

    .line 193
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadNfcUiVzwSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    const/16 v0, 0x10

    .line 199
    :cond_e
    const/16 v1, 0x10

    if-ne v1, v0, :cond_f

    .line 200
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSprintDataOffloadFlexSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 201
    const/16 v0, 0x11

    .line 206
    :cond_f
    const/16 v1, 0x11

    if-ne v1, v0, :cond_10

    .line 207
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSmsOverImsSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    const/16 v0, 0x12

    .line 213
    :cond_10
    const/16 v1, 0x12

    if-ne v1, v0, :cond_11

    .line 214
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadDataOffloadAdditionalSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    const/16 v0, 0x13

    .line 220
    :cond_11
    const/16 v1, 0x13

    if-ne v1, v0, :cond_12

    .line 223
    const/16 v0, 0x14

    .line 228
    :cond_12
    const/16 v1, 0x14

    if-ne v1, v0, :cond_13

    .line 230
    invoke-direct {p0, p1}, Lcom/motorola/android/providers/settings/DatabaseHelper;->loadSmsOverImsSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 231
    const/16 v0, 0x15

    .line 234
    :cond_13
    return-void
.end method
