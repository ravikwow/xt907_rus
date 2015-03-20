.class public Lcom/motorola/messaging/transaction/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final LOCAL_LOG:Z

.field protected static mContext:Landroid/content/Context;

.field private static mConversationManager:Lcom/motorola/messaging/conversation/ConversationManager;

.field private static mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

.field private static mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

.field private static mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

.field protected static mResolver:Landroid/content/ContentResolver;

.field protected static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mTestsEnabled:Z

.field private static sInstance:Lcom/motorola/messaging/transaction/TransactionManager;


# instance fields
.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 44
    sput-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->DEBUG:Z

    .line 45
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    .line 47
    sput-boolean v1, Lcom/motorola/messaging/transaction/TransactionManager;->mTestsEnabled:Z

    .line 48
    sput-object v3, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    .line 49
    sput-object v3, Lcom/motorola/messaging/transaction/TransactionManager;->mResolver:Landroid/content/ContentResolver;

    .line 50
    sput-object v3, Lcom/motorola/messaging/transaction/TransactionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionManager;->mServiceHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method public static doRuntime([Ljava/lang/String;)V
    .locals 14
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 135
    array-length v9, p0

    if-gtz v9, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const/4 v3, 0x0

    .line 140
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 141
    .local v4, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 144
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 145
    .local v8, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v8, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 146
    .local v7, "process":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 147
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .local v5, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    sget-boolean v9, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v9, :cond_4

    .line 152
    const-string v9, "TransactionManager"

    const-string v10, "Output of running %s is: "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 154
    const-string v9, "TransactionManager"

    invoke-static {v9, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 158
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 159
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :goto_2
    :try_start_3
    const-string v9, "TransactionManager"

    const-string v10, "doRuntime"

    invoke-static {v9, v10, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    if-eqz v3, :cond_2

    .line 164
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 166
    :cond_2
    if-eqz v4, :cond_3

    .line 167
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 169
    :cond_3
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v2

    .line 173
    sget-boolean v9, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v9, :cond_0

    .line 174
    const-string v9, "TransactionManager"

    const-string v10, "Unable to close stream"

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "process":Ljava/lang/Process;
    .restart local v8    # "runtime":Ljava/lang/Runtime;
    :cond_4
    if-eqz v3, :cond_5

    .line 164
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 166
    :cond_5
    if-eqz v5, :cond_6

    .line 167
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 169
    :cond_6
    if-eqz v1, :cond_7

    .line 170
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 178
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 162
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :catchall_0
    move-exception v9

    .line 163
    :goto_4
    if-eqz v3, :cond_8

    .line 164
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 166
    :cond_8
    if-eqz v4, :cond_9

    .line 167
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 169
    :cond_9
    if-eqz v0, :cond_a

    .line 170
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 162
    :cond_a
    :goto_5
    throw v9

    .line 172
    :catch_2
    move-exception v2

    .line 173
    .restart local v2    # "e":Ljava/io/IOException;
    sget-boolean v10, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v10, :cond_a

    .line 174
    const-string v10, "TransactionManager"

    const-string v11, "Unable to close stream"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 172
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "process":Ljava/lang/Process;
    .restart local v8    # "runtime":Ljava/lang/Runtime;
    :catch_3
    move-exception v2

    .line 173
    .restart local v2    # "e":Ljava/io/IOException;
    sget-boolean v9, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v9, :cond_7

    .line 174
    const-string v9, "TransactionManager"

    const-string v10, "Unable to close stream"

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 162
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 158
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "process":Ljava/lang/Process;
    .restart local v8    # "runtime":Ljava/lang/Runtime;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method public static getInstance()Lcom/motorola/messaging/transaction/TransactionManager;
    .locals 2

    .prologue
    .line 85
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->mTestsEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->sInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    .line 89
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->sInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/TransactionManager;-><init>()V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->sInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    .line 93
    :cond_1
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->sInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "TransactionManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    sput-object p0, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mResolver:Landroid/content/ContentResolver;

    .line 78
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    sget-boolean v0, Lcom/motorola/messaging/settings/MessageSettings;->MSG_UNIT_TEST_ENABLED:Z

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/TransactionManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/transaction/TransactionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/transaction/UTManager;->init(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/telephony/TelephonyManager;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->mTestsEnabled:Z

    .line 82
    :cond_1
    return-void
.end method

.method public static sleep(Ljava/lang/String;J)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 97
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "TransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static wakeUpService(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "TransactionManager"

    const-string v1, "wakeup TransactionService - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/motorola/messaging/transaction/TransactionService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    sget-object v1, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/motorola/messaging/util/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 117
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "TransactionManager"

    const-string v1, "wakeup TransactionService - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    return-void
.end method

.method public static wakeUpServiceWithIntentData(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "TransactionManager"

    const-string v1, "wakeup TransactionService - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/motorola/messaging/transaction/TransactionService;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/motorola/messaging/util/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 129
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "TransactionManager"

    const-string v1, "wakeup TransactionService - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    return-void
.end method


# virtual methods
.method public createNotificationTransaction(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Lcom/motorola/messaging/pdu/NotificationInd;)Lcom/motorola/messaging/transaction/NotificationTransaction;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "ind"    # Lcom/motorola/messaging/pdu/NotificationInd;

    .prologue
    .line 232
    new-instance v0, Lcom/motorola/messaging/transaction/NotificationTransaction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/messaging/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Lcom/motorola/messaging/pdu/NotificationInd;)V

    return-object v0
.end method

.method public createNotificationTransaction(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)Lcom/motorola/messaging/transaction/NotificationTransaction;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Lcom/motorola/messaging/transaction/NotificationTransaction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/messaging/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNotificationTransaction(Lcom/motorola/messaging/transaction/NotificationTransaction;)Lcom/motorola/messaging/transaction/NotificationTransaction;
    .locals 1
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/NotificationTransaction;

    .prologue
    .line 236
    new-instance v0, Lcom/motorola/messaging/transaction/NotificationTransaction;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/transaction/NotificationTransaction;-><init>(Lcom/motorola/messaging/transaction/NotificationTransaction;)V

    return-object v0
.end method

.method public createRetrieveTransaction(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)Lcom/motorola/messaging/transaction/RetrieveTransaction;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Lcom/motorola/messaging/transaction/RetrieveTransaction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/messaging/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V

    return-object v0
.end method

.method public createRetrieveTransaction(Lcom/motorola/messaging/transaction/RetrieveTransaction;)Lcom/motorola/messaging/transaction/RetrieveTransaction;
    .locals 1
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/RetrieveTransaction;

    .prologue
    .line 245
    new-instance v0, Lcom/motorola/messaging/transaction/RetrieveTransaction;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/transaction/RetrieveTransaction;-><init>(Lcom/motorola/messaging/transaction/RetrieveTransaction;)V

    return-object v0
.end method

.method public createTransaction(Lcom/motorola/messaging/transaction/Transaction;)Lcom/motorola/messaging/transaction/Transaction;
    .locals 1
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 249
    instance-of v0, p1, Lcom/motorola/messaging/transaction/SendTransaction;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/motorola/messaging/transaction/SendTransaction;

    check-cast p1, Lcom/motorola/messaging/transaction/SendTransaction;

    .end local p1    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    invoke-direct {v0, p1}, Lcom/motorola/messaging/transaction/SendTransaction;-><init>(Lcom/motorola/messaging/transaction/SendTransaction;)V

    .line 262
    :goto_0
    return-object v0

    .line 252
    .restart local p1    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    :cond_0
    instance-of v0, p1, Lcom/motorola/messaging/transaction/NotificationTransaction;

    if-eqz v0, :cond_1

    .line 253
    check-cast p1, Lcom/motorola/messaging/transaction/NotificationTransaction;

    .end local p1    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/transaction/TransactionManager;->createNotificationTransaction(Lcom/motorola/messaging/transaction/NotificationTransaction;)Lcom/motorola/messaging/transaction/NotificationTransaction;

    move-result-object v0

    goto :goto_0

    .line 255
    .restart local p1    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    :cond_1
    instance-of v0, p1, Lcom/motorola/messaging/transaction/RetrieveTransaction;

    if-eqz v0, :cond_2

    .line 256
    check-cast p1, Lcom/motorola/messaging/transaction/RetrieveTransaction;

    .end local p1    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/transaction/TransactionManager;->createRetrieveTransaction(Lcom/motorola/messaging/transaction/RetrieveTransaction;)Lcom/motorola/messaging/transaction/RetrieveTransaction;

    move-result-object v0

    goto :goto_0

    .line 258
    .restart local p1    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    :cond_2
    instance-of v0, p1, Lcom/motorola/messaging/transaction/ReadRecTransaction;

    if-eqz v0, :cond_3

    .line 259
    new-instance v0, Lcom/motorola/messaging/transaction/ReadRecTransaction;

    check-cast p1, Lcom/motorola/messaging/transaction/ReadRecTransaction;

    .end local p1    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    invoke-direct {v0, p1}, Lcom/motorola/messaging/transaction/ReadRecTransaction;-><init>(Lcom/motorola/messaging/transaction/ReadRecTransaction;)V

    goto :goto_0

    .line 262
    .restart local p1    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConversationManager()Lcom/motorola/messaging/conversation/ConversationManager;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mConversationManager:Lcom/motorola/messaging/conversation/ConversationManager;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/motorola/messaging/conversation/ConversationManager;

    invoke-direct {v0}, Lcom/motorola/messaging/conversation/ConversationManager;-><init>()V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mConversationManager:Lcom/motorola/messaging/conversation/ConversationManager;

    .line 214
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mConversationManager:Lcom/motorola/messaging/conversation/ConversationManager;

    return-object v0
.end method

.method public getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;
    .locals 2

    .prologue
    .line 190
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "TransactionManager"

    const-string v1, "getDownloadManager"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Lcom/motorola/messaging/transaction/DownloadManager;

    sget-object v1, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    .line 198
    :cond_1
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    return-object v0
.end method

.method public getHttpUtils(Landroid/content/Context;Lcom/motorola/messaging/transaction/Transaction;)Lcom/motorola/messaging/transaction/HttpUtils;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 218
    new-instance v0, Lcom/motorola/messaging/transaction/HttpUtils;

    invoke-direct {v0, p1, p2}, Lcom/motorola/messaging/transaction/HttpUtils;-><init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/Transaction;)V

    return-object v0
.end method

.method public getMOSmsManager()Lcom/motorola/messaging/transaction/MOSmsManager;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/motorola/messaging/transaction/MOSmsManager;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/MOSmsManager;-><init>()V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    .line 206
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    return-object v0
.end method

.method public getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/motorola/messaging/transaction/NetworkManager;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/NetworkManager;-><init>()V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    .line 186
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    return-object v0
.end method

.method public getSMSFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    invoke-static {p1}, Lcom/motorola/messaging/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public getSMSResultFromIntent(Landroid/content/Intent;)Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 270
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;-><init>()V

    .line 273
    .local v0, "result":Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;
    const-string v1, "result"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    .line 274
    const-string v1, "errorCode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    .line 279
    const-string v1, "destinations_set_id"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->destsSetId:I

    .line 280
    const-string v1, "max_parts"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->noOfSegments:I

    .line 281
    const-string v1, "max_destinations"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->noOfDestinations:I

    .line 282
    return-object v0
.end method

.method public onRetrieveStatus(I)I
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 305
    return p1
.end method

.method public onSentStatus(I)I
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 301
    return p1
.end method

.method public onTransactionProcess(Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 298
    return-void
.end method

.method public setServiceHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "serviceHandler"    # Landroid/os/Handler;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/motorola/messaging/transaction/TransactionManager;->mServiceHandler:Landroid/os/Handler;

    .line 287
    return-void
.end method
