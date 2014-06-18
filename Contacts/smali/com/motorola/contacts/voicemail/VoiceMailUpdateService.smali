.class public Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;
.super Landroid/app/IntentService;
.source "VoiceMailUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$1;,
        Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mUpdateThread:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "VoiceMailUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "VoiceMailUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->updateVoiceMailNumber()V

    return-void
.end method

.method private getVMRawContactId()I
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 99
    const-string v3, "mimetype=? AND data1=?"

    .line 101
    .local v3, "indexSelection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/preloaded"

    aput-object v0, v4, v8

    const-string v0, "1"

    aput-object v0, v4, v1

    .line 103
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 106
    .local v7, "indexCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "raw_contact_id"

    aput-object v9, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 110
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 123
    if-eqz v7, :cond_0

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    if-eqz v7, :cond_2

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    .line 123
    :cond_3
    if-eqz v7, :cond_4

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "VoiceMailUpdateService"

    const-string v1, "FAIL TO get raw contact id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    if-eqz v7, :cond_5

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v8

    goto :goto_0

    .line 123
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private updateVoiceMailNumber()V
    .locals 14

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->getVMRawContactId()I

    move-result v10

    .line 64
    .local v10, "rawId":I
    if-nez v10, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v8, "*86"

    .line 68
    .local v8, "newVMNumber":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v8

    .line 69
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "data/phones"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 70
    .local v1, "dataUri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-direct {v7, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 71
    .local v7, "data_id":Ljava/lang/Long;
    const/4 v9, 0x0

    .line 73
    .local v9, "phoneNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    const-string v3, "raw_contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    .local v6, "dataCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 79
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 81
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v0, "data3"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 93
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 94
    .local v12, "vmUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 84
    .end local v11    # "values":Landroid/content/ContentValues;
    .end local v12    # "vmUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string v0, "com.motorola.contacts.ACTION_UPDATE_VOICE_MAIL_NUMBER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mUpdateThread:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mUpdateThread:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mUpdateThread:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;-><init>(Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$1;)V

    iput-object v0, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mUpdateThread:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;

    .line 58
    iget-object v0, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->mUpdateThread:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
