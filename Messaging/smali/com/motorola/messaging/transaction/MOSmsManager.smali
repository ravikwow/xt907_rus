.class public Lcom/motorola/messaging/transaction/MOSmsManager;
.super Ljava/lang/Object;
.source "MOSmsManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final DELETE_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_LOG:Z

.field public static final MESSAGE_PENDING:Landroid/net/Uri;

.field public static final MESSAGE_QUEUED:Landroid/net/Uri;

.field protected static final PENDING_MSG_PROJECTION:[Ljava/lang/String;

.field private static final SEND_PROJECTION:[Ljava/lang/String;

.field public static final SMS_RETRY_PROJECTION:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mIsOutgoingDataCleaned:Ljava/lang/Boolean;

.field private static mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    sput-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->DEBUG:Z

    .line 49
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mIsOutgoingDataCleaned:Ljava/lang/Boolean;

    .line 56
    const-string v0, "content://sms/message_pending"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    .line 57
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_QUEUED:Landroid/net/Uri;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "thread_id"

    aput-object v3, v0, v1

    const-string v3, "address"

    aput-object v3, v0, v5

    const-string v3, "body"

    aput-object v3, v0, v6

    const-string v3, "failure_cause"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "date"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "status"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "locked"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "type"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "msg_id"

    aput-object v3, v0, v1

    const-string v3, "address"

    aput-object v3, v0, v5

    const-string v3, "retry_count"

    aput-object v3, v0, v6

    const-string v3, "total_segments"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "total_destinations"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "destinations_set_id"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "error_code"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "thread_id"

    aput-object v3, v0, v1

    const-string v3, "address"

    aput-object v3, v0, v5

    const-string v3, "body"

    aput-object v3, v0, v6

    const-string v3, "priority"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "status"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "locked"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->SEND_PROJECTION:[Ljava/lang/String;

    .line 126
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->DELETE_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 49
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->SEND_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->cleanOutgoingData()V

    return-void
.end method

.method public static addErrorCodeToPendingTable(Landroid/content/ContentValues;III)V
    .locals 3
    .param p0, "v"    # Landroid/content/ContentValues;
    .param p1, "segNumber"    # I
    .param p2, "resultCode"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 256
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addErrorCodeToPendingTable, segNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 268
    :cond_1
    const-string v0, "error_code"

    invoke-static {p2, p3}, Lcom/motorola/messaging/transaction/MOSmsManager;->getPendingErrorFromErrorCode(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    :cond_2
    return-void
.end method

.method public static addMessageToOutbox(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    .locals 10
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "deliveryReport"    # Z
    .param p6, "threadId"    # J

    .prologue
    .line 982
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 983
    const-string v0, "MOSmsManager"

    const-string v1, "addMessageToOutbox"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->cleanOutgoingData()V

    .line 987
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/motorola/messaging/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static cancelRetry(Landroid/net/Uri;II)V
    .locals 2
    .param p0, "messageUri"    # Landroid/net/Uri;
    .param p1, "pendingId"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 602
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 603
    const-string v0, "MOSmsManager"

    const-string v1, "cancelRetry"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p2}, Lcom/motorola/messaging/transaction/MOSmsManager;->updateErrorToSmsTable(Landroid/net/Uri;II)V

    .line 607
    invoke-static {p1}, Lcom/motorola/messaging/transaction/MOSmsManager;->deletePending(I)V

    .line 608
    return-void
.end method

.method private static cleanOutgoingData()V
    .locals 2

    .prologue
    .line 956
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 957
    const-string v0, "MOSmsManager"

    const-string v1, "cleanOutgoingData"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_0
    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mIsOutgoingDataCleaned:Ljava/lang/Boolean;

    monitor-enter v1

    .line 961
    :try_start_0
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mIsOutgoingDataCleaned:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->deleteAllPending()V

    .line 963
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->setInvalidOutboxMessages()V

    .line 966
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mIsOutgoingDataCleaned:Ljava/lang/Boolean;

    .line 967
    monitor-exit v1

    .line 968
    return-void

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static deleteAllPending()V
    .locals 6

    .prologue
    .line 719
    sget-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 720
    const-string v1, "MOSmsManager"

    const-string v2, "deleteAllPending"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_0
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 725
    const-string v1, "delete all"

    invoke-static {v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 726
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 727
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "MOSmsManager"

    const-string v2, "Messaging_Pending table does not exist"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deletePending(I)V
    .locals 5
    .param p0, "pendingId"    # I

    .prologue
    const/4 v4, 0x0

    .line 732
    sget-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 733
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePending, pending id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_0
    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 737
    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 738
    .local v0, "retryMsgUri":Landroid/net/Uri;
    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v4, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 739
    const-string v1, "delete"

    invoke-static {v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 741
    .end local v0    # "retryMsgUri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public static deletePendingUsingMsgId(I)V
    .locals 5
    .param p0, "msgId"    # I

    .prologue
    .line 744
    sget-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 745
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePendingUsingMsgId, msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "where":Ljava/lang/String;
    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 751
    const-string v1, "delete id"

    invoke-static {v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public static deletePendingUsingSmsUri(Landroid/net/Uri;)V
    .locals 13
    .param p0, "uriFromSmsTable"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 764
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 765
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePendingUsingSmsUri, uriFromSmsTable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->DELETE_PROJECTION:[Ljava/lang/String;

    move-object v2, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 770
    .local v7, "c":Landroid/database/Cursor;
    const/4 v11, -0x1

    .line 771
    .local v11, "pendingTableId":I
    if-eqz v7, :cond_3

    .line 773
    :try_start_0
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 775
    .local v12, "rc":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 777
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 780
    .local v10, "msgId":I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 783
    .local v8, "carry_msgId":I
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 784
    .local v9, "id":I
    if-ne v8, v10, :cond_4

    .line 785
    move v11, v9

    .line 794
    .end local v8    # "carry_msgId":I
    .end local v9    # "id":I
    .end local v10    # "msgId":I
    :cond_1
    :try_start_2
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 795
    const/4 v12, 0x0

    .line 800
    :cond_2
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 801
    const/4 v7, 0x0

    .line 805
    .end local v12    # "rc":Landroid/database/Cursor;
    :cond_3
    invoke-static {v11}, Lcom/motorola/messaging/transaction/MOSmsManager;->deletePending(I)V

    .line 806
    return-void

    .line 788
    .restart local v8    # "carry_msgId":I
    .restart local v9    # "id":I
    .restart local v10    # "msgId":I
    .restart local v12    # "rc":Landroid/database/Cursor;
    :cond_4
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 794
    .end local v8    # "carry_msgId":I
    .end local v9    # "id":I
    .end local v10    # "msgId":I
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 795
    const/4 v12, 0x0

    .line 794
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 800
    .end local v12    # "rc":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 801
    const/4 v7, 0x0

    .line 800
    throw v0
.end method

.method public static deletePendingUsingWhere(Ljava/lang/String;)V
    .locals 4
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 755
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 756
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePendingUsingWhere, where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p0, v3}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 760
    const-string v0, "delete"

    invoke-static {v0}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private static dumpPendingTable(Ljava/lang/String;)V
    .locals 0
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 1029
    return-void
.end method

.method public static finishSmsSent(I)V
    .locals 3
    .param p0, "msgId"    # I

    .prologue
    .line 707
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 708
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishSmsSent, msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/transaction/MOSmsManager;->deletePendingUsingMsgId(I)V

    .line 715
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

    .line 716
    return-void
.end method

.method public static folderToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "folder"    # I

    .prologue
    .line 866
    const-string v0, "UNKNOWN"

    .line 868
    .local v0, "result":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 896
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 870
    :pswitch_0
    const-string v0, "QUEUED"

    .line 871
    goto :goto_0

    .line 874
    :pswitch_1
    const-string v0, "DRAFT"

    .line 875
    goto :goto_0

    .line 878
    :pswitch_2
    const-string v0, "INBOX"

    .line 879
    goto :goto_0

    .line 882
    :pswitch_3
    const-string v0, "OUTBOX"

    .line 883
    goto :goto_0

    .line 886
    :pswitch_4
    const-string v0, "SENT"

    .line 887
    goto :goto_0

    .line 890
    :pswitch_5
    const-string v0, "FAILED"

    .line 891
    goto :goto_0

    .line 868
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static getErrorCodeFromPendingError(I)I
    .locals 4
    .param p0, "pErrorCode"    # I

    .prologue
    .line 301
    invoke-static {p0}, Lcom/motorola/messaging/transaction/MOSmsManager;->isNoError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    const/4 v0, 0x0

    .line 308
    .local v0, "errorCode":I
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorCodeFromPendingError OUT, errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    return v0

    .line 305
    .end local v0    # "errorCode":I
    :cond_1
    if-ltz p0, :cond_2

    move v0, p0

    .restart local v0    # "errorCode":I
    :goto_1
    goto :goto_0

    .end local v0    # "errorCode":I
    :cond_2
    xor-int/lit8 v0, p0, -0x1

    goto :goto_1
.end method

.method private static getPendingErrorFromErrorCode(II)I
    .locals 4
    .param p0, "resultCode"    # I
    .param p1, "errorCode"    # I

    .prologue
    .line 279
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 280
    const v0, 0x8000

    .line 290
    .local v0, "pErrorCode":I
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 291
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPendingErrorFromErrorCode OUT, pErrorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/motorola/messaging/transaction/MOSmsManager;->pErrorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    return v0

    .line 282
    .end local v0    # "pErrorCode":I
    :cond_1
    invoke-static {p0}, Lcom/motorola/messaging/transaction/MOSmsManager;->isPermanentError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    move v0, p1

    .restart local v0    # "pErrorCode":I
    goto :goto_0

    .line 287
    .end local v0    # "pErrorCode":I
    :cond_2
    xor-int/lit8 v0, p1, -0x1

    .restart local v0    # "pErrorCode":I
    goto :goto_0
.end method

.method public static getResultCodeFromPendingError(I)I
    .locals 2
    .param p0, "pErrorCode"    # I

    .prologue
    .line 319
    invoke-static {p0}, Lcom/motorola/messaging/transaction/MOSmsManager;->isNoError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const/4 v0, -0x1

    .line 331
    .local v0, "resultCode":I
    :goto_0
    return v0

    .line 323
    .end local v0    # "resultCode":I
    :cond_0
    if-gez p0, :cond_1

    .line 324
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    .restart local v0    # "resultCode":I
    goto :goto_0

    .line 327
    .end local v0    # "resultCode":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "MOSmsManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    sput-object p0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 143
    return-void
.end method

.method public static insertPendingTable(Landroid/net/Uri;IIII)V
    .locals 6
    .param p0, "msgPendingUri"    # Landroid/net/Uri;
    .param p1, "msgId"    # I
    .param p2, "destsSetId"    # I
    .param p3, "resultCode"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 360
    sget-boolean v3, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 361
    const-string v3, "MOSmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertPendingTable, uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", destsSetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 371
    .local v2, "v":Landroid/content/ContentValues;
    const/4 v1, 0x1

    .line 372
    .local v1, "segNumber":I
    const-string v3, "msg_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v3, "destinations_set_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v3, "total_segments"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    invoke-static {v2, v1, p3, p4}, Lcom/motorola/messaging/transaction/MOSmsManager;->addErrorCodeToPendingTable(Landroid/content/ContentValues;III)V

    .line 376
    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4, p0, v2}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 377
    const-string v3, "insert"

    invoke-static {v3}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v1    # "segNumber":I
    .end local v2    # "v":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MOSmsManager"

    const-string v4, "Messaging_Pending table does not exist"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isNoError(I)Z
    .locals 1
    .param p0, "pErrorCode"    # I

    .prologue
    .line 335
    const v0, -0x80e9

    if-eq p0, v0, :cond_0

    const v0, 0x8000

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPermanentError(I)Z
    .locals 1
    .param p0, "resultCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 344
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTemporaryError(I)Z
    .locals 1
    .param p0, "resultCode"    # I

    .prologue
    .line 340
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pErrorCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "pErrorCode"    # I

    .prologue
    .line 844
    sparse-switch p0, :sswitch_data_0

    .line 854
    if-gez p0, :cond_0

    .line 855
    const-string v0, "TEMPORARY_ERROR"

    .line 862
    .local v0, "result":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 846
    .end local v0    # "result":Ljava/lang/String;
    :sswitch_0
    const-string v0, "SMS_SUCCESS"

    .line 847
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 850
    .end local v0    # "result":Ljava/lang/String;
    :sswitch_1
    const-string v0, "SMS_NO_ERROR"

    .line 851
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 858
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "PERMANENT_ERROR"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 844
    :sswitch_data_0
    .sparse-switch
        -0x80e9 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static removeObsoletePending()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 809
    sget-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 810
    const-string v1, "MOSmsManager"

    const-string v2, "removeObsoletePending"

    invoke-static {v1, v3, v3, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 814
    :cond_0
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    const-string v4, "not msg_id in (select msg_id from sms)"

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 815
    const-string v1, "remove obsolete"

    invoke-static {v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 816
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 817
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v1, "MOSmsManager"

    const-string v2, "removeObsoletePending"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static resendShortMessage(JJ)V
    .locals 18
    .param p0, "threadId"    # J
    .param p2, "msgId"    # J

    .prologue
    .line 902
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 903
    .local v4, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "address"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "body"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "priority"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "status"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "locked"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 906
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_1

    .line 908
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    new-instance v5, Lcom/motorola/messaging/transaction/SmsMessageSender;

    sget-object v6, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v15, 0x1

    :goto_0
    move-wide/from16 v9, p2

    invoke-direct/range {v5 .. v15}, Lcom/motorola/messaging/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JIIIIZ)V

    .line 913
    .local v5, "sender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    move-wide/from16 v0, p0

    invoke-virtual {v5, v0, v1}, Lcom/motorola/messaging/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    .end local v5    # "sender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    :cond_0
    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 921
    :cond_1
    return-void

    .line 909
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v17

    .line 916
    .local v17, "e":Lcom/motorola/messaging/util/MmsException;
    :try_start_1
    const-string v2, "MOSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message could not be sent: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 918
    .end local v17    # "e":Lcom/motorola/messaging/util/MmsException;
    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v16}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v2
.end method

.method public static resultCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "resultCode"    # I

    .prologue
    .line 822
    const-string v0, "UNKNOWN"

    .line 824
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 825
    const-string v0, "RADIO_OFF"

    .line 838
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 826
    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 827
    const-string v0, "NO_SERVICE"

    goto :goto_0

    .line 828
    :cond_2
    const/4 v1, -0x1

    if-ne p0, v1, :cond_3

    .line 829
    const-string v0, "RESULT_OK"

    goto :goto_0

    .line 830
    :cond_3
    sget v1, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_FDN_CHECK_FAILURE:I

    if-ne p0, v1, :cond_4

    .line 831
    const-string v0, "FDN_FAILURE"

    goto :goto_0

    .line 832
    :cond_4
    sget v1, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    if-ne p0, v1, :cond_5

    .line 833
    const-string v0, "TEMPORARY_ERROR"

    goto :goto_0

    .line 834
    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 835
    const-string v0, "GENERIC_ERROR"

    goto :goto_0
.end method

.method public static retrievePendingData(Landroid/net/Uri;Lcom/motorola/messaging/transaction/PendingData;)V
    .locals 12
    .param p0, "messageUri"    # Landroid/net/Uri;
    .param p1, "data"    # Lcom/motorola/messaging/transaction/PendingData;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 440
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "MOSmsManager"

    const-string v1, "retrievePendingData"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Lcom/motorola/messaging/transaction/PendingData;->pendingId:I

    .line 445
    iput v2, p1, Lcom/motorola/messaging/transaction/PendingData;->retryCount:I

    .line 446
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    move-object v2, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 448
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 450
    :try_start_0
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 452
    .local v11, "rc":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 454
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 457
    .local v10, "msgId":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 460
    .local v8, "carry_msgId":I
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 461
    .local v9, "id":I
    if-ne v8, v10, :cond_5

    .line 462
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/messaging/transaction/PendingData;->retryCount:I

    .line 463
    iput v9, p1, Lcom/motorola/messaging/transaction/PendingData;->pendingId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    .end local v8    # "carry_msgId":I
    .end local v9    # "id":I
    .end local v10    # "msgId":I
    :cond_1
    :try_start_2
    invoke-static {v11}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 473
    const/4 v11, 0x0

    .line 478
    :cond_2
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 479
    const/4 v7, 0x0

    .line 483
    .end local v11    # "rc":Landroid/database/Cursor;
    :cond_3
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 484
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrievePendingData OUT, pending id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/motorola/messaging/transaction/PendingData;->pendingId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/motorola/messaging/transaction/PendingData;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_4
    return-void

    .line 466
    .restart local v8    # "carry_msgId":I
    .restart local v9    # "id":I
    .restart local v10    # "msgId":I
    .restart local v11    # "rc":Landroid/database/Cursor;
    :cond_5
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 472
    .end local v8    # "carry_msgId":I
    .end local v9    # "id":I
    .end local v10    # "msgId":I
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v11}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 473
    const/4 v11, 0x0

    .line 472
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 478
    .end local v11    # "rc":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 479
    const/4 v7, 0x0

    .line 478
    throw v0
.end method

.method public static retryMultipleSms(Ljava/util/List;I)V
    .locals 4
    .param p1, "commonDestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 546
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryMultipleSms, commonDestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    new-instance v0, Lcom/motorola/messaging/transaction/MOSmsManager$3;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/transaction/MOSmsManager$3;-><init>(Ljava/util/List;I)V

    .line 598
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "retry_multiple_sms"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public static retrySms(Landroid/net/Uri;II)V
    .locals 4
    .param p0, "messageUri"    # Landroid/net/Uri;
    .param p1, "retryCount"    # I
    .param p2, "pendingId"    # I

    .prologue
    .line 492
    sget-boolean v1, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 493
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrySms, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_0
    new-instance v0, Lcom/motorola/messaging/transaction/MOSmsManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/motorola/messaging/transaction/MOSmsManager$2;-><init>(Landroid/net/Uri;II)V

    .line 540
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "retry_sms"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public static declared-synchronized sendFirstQueuedMessage(J)V
    .locals 8
    .param p0, "retryDelay"    # J

    .prologue
    .line 177
    const-class v4, Lcom/motorola/messaging/transaction/MOSmsManager;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 178
    const-string v3, "MOSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFirstQueuedMessage, delay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/messaging/transaction/TransactionManager;->getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v0

    .line 183
    .local v0, "networkManager":Lcom/motorola/messaging/transaction/NetworkManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isAirplaneModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    const-string v3, "MOSmsManager"

    const-string v5, "SMS-STATUS - Resend of queued SMSs not performed (airplane mode)"

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    monitor-exit v4

    return-void

    .line 188
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v3, p0, v5

    if-eqz v3, :cond_2

    .line 189
    :try_start_1
    new-instance v1, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;

    invoke-direct {v1}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;-><init>()V

    .line 190
    .local v1, "retryFirst":Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;
    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p0

    invoke-static {v3, v5, v1, v6, v7}, Lcom/motorola/messaging/transaction/RetryScheduler;->setSmsRetryAlarm(Landroid/net/Uri;ZLcom/motorola/messaging/transaction/SmsReceiverService$Retry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0    # "networkManager":Lcom/motorola/messaging/transaction/NetworkManager;
    .end local v1    # "retryFirst":Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 194
    .restart local v0    # "networkManager":Lcom/motorola/messaging/transaction/NetworkManager;
    :cond_2
    :try_start_2
    new-instance v2, Lcom/motorola/messaging/transaction/MOSmsManager$1;

    invoke-direct {v2}, Lcom/motorola/messaging/transaction/MOSmsManager$1;-><init>()V

    .line 236
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v3

    const-string v5, "send_first_queued_msg"

    invoke-virtual {v3, v2, v5}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static sendSmsSendingStatusBroadcast(Landroid/net/Uri;Z)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "success"    # Z

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "messageId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.contracts.messaging.intent.SEND_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "SMS_SENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    const-string v2, "id"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 355
    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method private static setInvalidOutboxMessages()V
    .locals 7

    .prologue
    .line 971
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 972
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "stack_type"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 973
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4 and stack_type != -1"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 975
    .local v6, "numFailures":I
    if-lez v6, :cond_0

    .line 976
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SMS found in the outbox, number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :cond_0
    return-void
.end method

.method public static startRetryAttemptForPendingTable(III)V
    .locals 7
    .param p0, "pendingTableId"    # I
    .param p1, "msgId"    # I
    .param p2, "retryCount"    # I

    .prologue
    .line 411
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRetryAttemptForPendingTable, pendingTableId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", msgId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", retryCount="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 420
    .local v3, "v":Landroid/content/ContentValues;
    const-string v0, "msg_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 423
    const-string v0, "retry_count"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    invoke-static {v0, v1, v4, v3}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 425
    const-string v0, "first retry"

    invoke-static {v0}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 437
    .end local v3    # "v":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 427
    .restart local v3    # "v":Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 428
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v4, p0

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 429
    .local v2, "retryMsgUri":Landroid/net/Uri;
    const-string v0, "retry_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v0, "total_segments"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    const-string v0, "update retry"

    invoke-static {v0}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    .end local v2    # "retryMsgUri":Landroid/net/Uri;
    .end local v3    # "v":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 435
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "MOSmsManager"

    const-string v1, "Messaging_Pending table does not exist"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static treatPowerUp()V
    .locals 3

    .prologue
    .line 925
    :try_start_0
    new-instance v0, Lcom/motorola/messaging/transaction/MOSmsManager$4;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/MOSmsManager$4;-><init>()V

    .line 940
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "boot_completed"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    return-void

    .line 942
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public static updateErrorToSmsTable(Landroid/net/Uri;II)V
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resultCode"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 241
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateErrorToSmsTable, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/motorola/messaging/transaction/MOSmsManager;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 250
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "failure_cause"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v0, "error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public static updateMsgPendingId(II)V
    .locals 11
    .param p0, "old"    # I
    .param p1, "newId"    # I

    .prologue
    const/4 v4, 0x0

    .line 666
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 667
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMsgPendingId, old="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", newId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    const/4 v7, 0x0

    .line 673
    .local v7, "found":Z
    const/4 v8, 0x1

    .local v8, "id":I
    const/4 v10, 0x1

    .line 674
    .local v10, "unique":I
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 676
    .local v9, "rc":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 678
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 680
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 681
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 682
    if-ne v10, p0, :cond_4

    .line 683
    const/4 v7, 0x1

    .line 689
    :cond_1
    if-eqz v7, :cond_2

    .line 690
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v4, v8

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 691
    .local v2, "msgUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 692
    .local v3, "v":Landroid/content/ContentValues;
    const-string v0, "msg_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v0, "destinations_set_id"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string v0, "total_segments"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    .end local v2    # "msgUri":Landroid/net/Uri;
    .end local v3    # "v":Landroid/content/ContentValues;
    :cond_2
    invoke-static {v9}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 703
    :cond_3
    const-string v0, "update msg id"

    invoke-static {v0}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 704
    return-void

    .line 686
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static updatePendingTable(Landroid/net/Uri;ZIII)V
    .locals 7
    .param p0, "msgUri"    # Landroid/net/Uri;
    .param p1, "updateTotalSegments"    # Z
    .param p2, "segNumber"    # I
    .param p3, "resultCode"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 385
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePendingTable, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", updateTotalSegments="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", segNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 396
    .local v3, "v":Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 397
    add-int/lit8 p2, p2, 0x1

    .line 398
    const-string v0, "total_segments"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    :cond_1
    invoke-static {v3, p2, p3, p4}, Lcom/motorola/messaging/transaction/MOSmsManager;->addErrorCodeToPendingTable(Landroid/content/ContentValues;III)V

    .line 402
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v3    # "v":Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v6

    .line 406
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "MOSmsManager"

    const-string v1, "Messaging_Pending table does not exist"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateSegmentInPendingTable(IIZ)I
    .locals 13
    .param p0, "msgId"    # I
    .param p1, "destsSetId"    # I
    .param p2, "oneSeg"    # Z

    .prologue
    const/4 v4, 0x0

    .line 612
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 613
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSegmentInPendingTable IN, msgIdStored="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destsSetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 620
    .local v7, "c":Landroid/database/Cursor;
    const/4 v9, -0x1

    .line 621
    .local v9, "id":I
    const/4 v11, -0x1

    .line 623
    .local v11, "pendingTableId":I
    if-eqz v7, :cond_4

    .line 625
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 627
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 628
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 629
    .local v10, "msgIdStored":I
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 630
    .local v8, "destsSetIdStored":I
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 632
    .local v12, "seg":I
    if-ne v10, p0, :cond_6

    .line 633
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 634
    .local v3, "v":Landroid/content/ContentValues;
    move v8, p1

    .line 635
    if-nez v12, :cond_2

    if-eqz p2, :cond_2

    .line 636
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 637
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSegmentInPendingTable, segment number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_1
    const-string v0, "total_segments"

    add-int/lit8 v1, v12, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    :cond_2
    const-string v0, "destinations_set_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v4, v9

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 646
    move v11, v9

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update segment, values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .end local v3    # "v":Landroid/content/ContentValues;
    .end local v8    # "destsSetIdStored":I
    .end local v10    # "msgIdStored":I
    .end local v12    # "seg":I
    :cond_3
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 658
    :cond_4
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 659
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSegmentInPendingTable OUT, pending table id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_5
    return v11

    .line 650
    .restart local v8    # "destsSetIdStored":I
    .restart local v10    # "msgIdStored":I
    .restart local v12    # "seg":I
    :cond_6
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 654
    .end local v8    # "destsSetIdStored":I
    .end local v10    # "msgIdStored":I
    .end local v12    # "seg":I
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static updateSmsStackType(Landroid/net/Uri;)V
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 165
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "MOSmsManager"

    const-string v1, "updateSmsStackType, uri"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 170
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v6, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_GSM:I

    .line 171
    .local v6, "stackType":I
    :goto_0
    const-string v0, "stack_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    move-object v2, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    return-void

    .line 170
    .end local v6    # "stackType":I
    :cond_1
    sget v6, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_CDMA:I

    goto :goto_0
.end method


# virtual methods
.method public moveMessageToFolder(Landroid/net/Uri;III)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "folder"    # I
    .param p3, "resultCode"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 147
    sget-boolean v0, Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveMessageToFolder, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", folder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/motorola/messaging/transaction/MOSmsManager;->folderToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendSmsSendingStatusBroadcast(Landroid/net/Uri;Z)V

    .line 159
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p4, p3}, Lcom/motorola/messaging/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;III)Z

    .line 161
    invoke-static {p1}, Lcom/motorola/messaging/transaction/MOSmsManager;->updateSmsStackType(Landroid/net/Uri;)V

    .line 162
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
