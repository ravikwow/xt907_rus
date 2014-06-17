.class public abstract Lcom/android/mms/transaction/MTTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "MTTransaction.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lcom/android/mms/transaction/MTTransaction;->DEBUG:Z

    .line 52
    sget-boolean v1, Lcom/android/mms/transaction/MTTransaction;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/MTTransaction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "settings"    # Lcom/android/mms/transaction/TransactionSettings;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/Transaction;)V
    .locals 0
    .param p1, "t"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/Transaction;-><init>(Lcom/android/mms/transaction/Transaction;)V

    .line 66
    return-void
.end method

.method private loadLocationData(Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 2
    .param p1, "notificationInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 176
    :cond_0
    if-eqz p1, :cond_1

    .line 177
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 181
    :cond_2
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/MTTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 183
    :cond_3
    return-void
.end method


# virtual methods
.method public loadDownloadData(Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 7
    .param p1, "notificationInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    sget-boolean v0, Lcom/android/mms/transaction/MTTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "MTTransaction"

    const-string v1, "MMS-STATUS - From field is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/NotificationInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/transaction/NotificationTransaction;->allowAutoDownload()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MTTransaction;->loadLocationData(Lcom/google/android/mms/pdu/NotificationInd;)V

    .line 169
    return-void

    .line 159
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v6

    .line 163
    .local v6, "e":Lcom/google/android/mms/MmsException;
    const-string v0, "MTTransaction"

    const-string v1, "Failed to save NotificationInd in constructor."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/MTTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    goto :goto_1
.end method

.method public loadDownloadData(Ljava/lang/String;)V
    .locals 6
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 131
    const/4 v2, 0x0

    .line 134
    .local v2, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 135
    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/MTTransaction;->loadLocationData(Lcom/google/android/mms/pdu/NotificationInd;)V

    .line 144
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const-string v3, "MTTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load NotificationInd from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/MTTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    goto :goto_0
.end method

.method protected setDownloadState(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "downloadState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/android/mms/util/DownloadManager$Result;

    move-result-object v0

    .line 72
    .local v0, "result":Lcom/android/mms/util/DownloadManager$Result;
    sget-object v1, Lcom/android/mms/util/DownloadManager$Result;->EXPIRED:Lcom/android/mms/util/DownloadManager$Result;

    if-ne v0, v1, :cond_0

    .line 73
    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->MMS_EXPIRED:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MTTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 74
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "MMS-STATUS - Can not start download (MMS expired)"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    sget-object v1, Lcom/android/mms/util/DownloadManager$Result;->SUCCESS:Lcom/android/mms/util/DownloadManager$Result;

    if-eq v0, v1, :cond_1

    .line 77
    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MTTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 78
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "MMS-STATUS - invalid download state"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    return-void
.end method

.method protected treatMTException(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "exception":Ljava/lang/String;
    const-string v0, "org.apache.http.HttpException: 404"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v0, v6}, Lcom/android/mms/transaction/MTTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 88
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 89
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "MTTransaction"

    const-string v1, "MMS-STATUS - MMSC error: message not found (expired)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "retr_st"

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MTTransaction;->treatException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected treatNetworkRetrieveStatus(Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 8
    .param p1, "retrieveConf"    # Lcom/google/android/mms/pdu/RetrieveConf;

    .prologue
    const/4 v4, 0x0

    .line 101
    sget-boolean v0, Lcom/android/mms/transaction/MTTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "MT MMS processed by framework"

    invoke-static {v0, p1}, Lcom/android/mms/model/SmilHelper;->showPdu(Ljava/lang/String;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 104
    :cond_0
    const/4 v6, 0x1

    .line 105
    .local v6, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 106
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MTTransaction;->getRetrieveStatus(Lcom/google/android/mms/pdu/RetrieveConf;)I

    move-result v7

    .line 107
    .local v7, "retrieveStatus":I
    sget-boolean v0, Lcom/android/mms/transaction/MTTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "MTTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "treatNetworkRetrieveStatus, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    const/16 v0, 0x80

    if-eq v7, v0, :cond_2

    .line 113
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/MTTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 114
    const-string v0, "retr_st"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v0, "resp_st"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    const-string v0, "MTTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - MMSC error, retrieve status=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v6, 0x0

    .line 126
    :cond_2
    return v6
.end method
