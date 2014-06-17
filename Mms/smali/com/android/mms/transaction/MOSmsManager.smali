.class public Lcom/android/mms/transaction/MOSmsManager;
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

    .line 52
    sput-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->DEBUG:Z

    .line 53
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms:transaction"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->mIsOutgoingDataCleaned:Ljava/lang/Boolean;

    .line 60
    const-string v0, "content://sms/message_pending"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    .line 61
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_QUEUED:Landroid/net/Uri;

    .line 65
    const/16 v0, 0xa

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

    const/16 v3, 0x9

    const-string v4, "priority"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    .line 92
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

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    .line 113
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

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->SEND_PROJECTION:[Ljava/lang/String;

    .line 132
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->DELETE_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 53
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    return v0
.end method

.method public static addErrorCodeToPendingTable(Landroid/content/ContentValues;III)V
    .locals 3
    .param p0, "v"    # Landroid/content/ContentValues;
    .param p1, "segNumber"    # I
    .param p2, "resultCode"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 209
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 220
    :cond_1
    const-string v0, "error_code"

    invoke-static {p2, p3}, Lcom/android/mms/transaction/MOSmsManager;->getPendingErrorFromErrorCode(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    :cond_2
    return-void
.end method

.method public static cancelRetry(Landroid/net/Uri;II)V
    .locals 2
    .param p0, "messageUri"    # Landroid/net/Uri;
    .param p1, "pendingId"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 556
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "MOSmsManager"

    const-string v1, "cancelRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p2}, Lcom/android/mms/transaction/MOSmsManager;->updateErrorToSmsTable(Landroid/net/Uri;II)V

    .line 561
    invoke-static {p1}, Lcom/android/mms/transaction/MOSmsManager;->deletePending(I)V

    .line 562
    return-void
.end method

.method public static deletePending(I)V
    .locals 5
    .param p0, "pendingId"    # I

    .prologue
    const/4 v4, 0x0

    .line 685
    sget-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 686
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 690
    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 691
    .local v0, "retryMsgUri":Landroid/net/Uri;
    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 692
    const-string v1, "delete"

    invoke-static {v1}, Lcom/android/mms/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 694
    .end local v0    # "retryMsgUri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public static deletePendingUsingMsgId(I)V
    .locals 5
    .param p0, "msgId"    # I

    .prologue
    .line 697
    sget-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 698
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
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

    .line 703
    .local v0, "where":Ljava/lang/String;
    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 704
    const-string v1, "delete id"

    invoke-static {v1}, Lcom/android/mms/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public static deletePendingUsingSmsUri(Landroid/net/Uri;)V
    .locals 13
    .param p0, "uriFromSmsTable"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 717
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 718
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->DELETE_PROJECTION:[Ljava/lang/String;

    move-object v2, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 723
    .local v7, "c":Landroid/database/Cursor;
    const/4 v11, -0x1

    .line 724
    .local v11, "pendingTableId":I
    if-eqz v7, :cond_3

    .line 726
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 728
    .local v12, "rc":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 730
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 733
    .local v10, "msgId":I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 736
    .local v8, "carry_msgId":I
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 737
    .local v9, "id":I
    if-ne v8, v10, :cond_4

    .line 738
    move v11, v9

    .line 747
    .end local v8    # "carry_msgId":I
    .end local v9    # "id":I
    .end local v10    # "msgId":I
    :cond_1
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 748
    const/4 v12, 0x0

    .line 753
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 754
    const/4 v7, 0x0

    .line 758
    .end local v12    # "rc":Landroid/database/Cursor;
    :cond_3
    invoke-static {v11}, Lcom/android/mms/transaction/MOSmsManager;->deletePending(I)V

    .line 759
    return-void

    .line 741
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

    .line 747
    .end local v8    # "carry_msgId":I
    .end local v9    # "id":I
    .end local v10    # "msgId":I
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 748
    const/4 v12, 0x0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 753
    .end local v12    # "rc":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 754
    const/4 v7, 0x0

    throw v0
.end method

.method private static dumpPendingTable(Ljava/lang/String;)V
    .locals 18
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 918
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpPendingTable, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 922
    .local v14, "rc":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 924
    const/4 v12, 0x0

    .line 925
    .local v12, "num":I
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    add-int/lit8 v12, v12, 0x1

    .line 927
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 928
    .local v13, "pendingId":I
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 929
    .local v11, "msgId":I
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 930
    .local v8, "address":I
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 931
    .local v15, "retryCount":I
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 932
    .local v17, "totalSeg":I
    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 933
    .local v16, "totalDest":I
    const/4 v1, 0x6

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 934
    .local v9, "destSetId":I
    const/4 v1, 0x7

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 935
    .local v10, "errorCode":I
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pendingId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", totalSeg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", totalDest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", destSetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 950
    .end local v8    # "address":I
    .end local v9    # "destSetId":I
    .end local v10    # "errorCode":I
    .end local v11    # "msgId":I
    .end local v13    # "pendingId":I
    .end local v15    # "retryCount":I
    .end local v16    # "totalDest":I
    .end local v17    # "totalSeg":I
    :catchall_0
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 951
    const/4 v14, 0x0

    throw v1

    .line 946
    :cond_0
    if-nez v12, :cond_1

    .line 947
    :try_start_1
    const-string v1, "MOSmsManager"

    const-string v2, "pending is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 951
    const/4 v14, 0x0

    .line 955
    .end local v12    # "num":I
    :cond_2
    return-void
.end method

.method public static finishSmsSent(I)V
    .locals 3
    .param p0, "msgId"    # I

    .prologue
    .line 662
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 663
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MOSmsManager;->deletePendingUsingMsgId(I)V

    .line 669
    return-void
.end method

.method public static folderToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "folder"    # I

    .prologue
    .line 839
    const-string v0, "UNKNOWN"

    .line 841
    .local v0, "result":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 869
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

    .line 843
    :pswitch_0
    const-string v0, "QUEUED"

    .line 844
    goto :goto_0

    .line 847
    :pswitch_1
    const-string v0, "DRAFT"

    .line 848
    goto :goto_0

    .line 851
    :pswitch_2
    const-string v0, "INBOX"

    .line 852
    goto :goto_0

    .line 855
    :pswitch_3
    const-string v0, "OUTBOX"

    .line 856
    goto :goto_0

    .line 859
    :pswitch_4
    const-string v0, "SENT"

    .line 860
    goto :goto_0

    .line 863
    :pswitch_5
    const-string v0, "FAILED"

    .line 864
    goto :goto_0

    .line 841
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
    .line 253
    invoke-static {p0}, Lcom/android/mms/transaction/MOSmsManager;->isNoError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const/4 v0, 0x0

    .line 260
    .local v0, "errorCode":I
    :goto_0
    sget-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 261
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    return v0

    .line 257
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
    .line 231
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 232
    const v0, 0x8000

    .line 242
    .local v0, "pErrorCode":I
    :goto_0
    sget-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 243
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPendingErrorFromErrorCode OUT, pErrorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/mms/transaction/MOSmsManager;->pErrorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    return v0

    .line 234
    .end local v0    # "pErrorCode":I
    :cond_1
    invoke-static {p0}, Lcom/android/mms/transaction/MOSmsManager;->isPermanentError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    move v0, p1

    .restart local v0    # "pErrorCode":I
    goto :goto_0

    .line 239
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
    .line 271
    invoke-static {p0}, Lcom/android/mms/transaction/MOSmsManager;->isNoError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v0, -0x1

    .line 283
    .local v0, "resultCode":I
    :goto_0
    return v0

    .line 275
    .end local v0    # "resultCode":I
    :cond_0
    if-gez p0, :cond_1

    .line 276
    const/16 v0, 0xff

    .restart local v0    # "resultCode":I
    goto :goto_0

    .line 279
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
    .line 143
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "MOSmsManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    sput-object p0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 149
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
    .line 312
    sget-boolean v3, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 313
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

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 323
    .local v2, "v":Landroid/content/ContentValues;
    const/4 v1, 0x1

    .line 324
    .local v1, "segNumber":I
    const-string v3, "msg_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v3, "destinations_set_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v3, "total_segments"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    invoke-static {v2, v1, p3, p4}, Lcom/android/mms/transaction/MOSmsManager;->addErrorCodeToPendingTable(Landroid/content/ContentValues;III)V

    .line 328
    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4, p0, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 329
    const-string v3, "insert"

    invoke-static {v3}, Lcom/android/mms/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v1    # "segNumber":I
    .end local v2    # "v":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MOSmsManager"

    const-string v4, "Messaging_Pending table does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isNoError(I)Z
    .locals 1
    .param p0, "pErrorCode"    # I

    .prologue
    .line 287
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

    .line 296
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
    .line 292
    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSmsUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 958
    const/4 v8, 0x0

    .line 960
    .local v8, "isValid":Z
    if-eqz p1, :cond_0

    .line 961
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 964
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 965
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2

    move v8, v9

    .line 966
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 970
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    if-nez v8, :cond_1

    .line 971
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_1
    return v8

    .line 965
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static pErrorCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "pErrorCode"    # I

    .prologue
    .line 817
    sparse-switch p0, :sswitch_data_0

    .line 827
    if-gez p0, :cond_0

    .line 828
    const-string v0, "TEMPORARY_ERROR"

    .line 835
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

    .line 819
    .end local v0    # "result":Ljava/lang/String;
    :sswitch_0
    const-string v0, "SMS_SUCCESS"

    .line 820
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 823
    .end local v0    # "result":Ljava/lang/String;
    :sswitch_1
    const-string v0, "SMS_NO_ERROR"

    .line 824
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 831
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "PERMANENT_ERROR"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 817
    :sswitch_data_0
    .sparse-switch
        -0x80e9 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static removeObsoletePending()V
    .locals 6

    .prologue
    .line 762
    sget-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 763
    const-string v1, "MOSmsManager"

    const-string v2, "removeObsoletePending"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    const-string v4, "not msg_id in (select msg_id from sms)"

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 768
    const-string v1, "remove obsolete"

    invoke-static {v1}, Lcom/android/mms/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 769
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 770
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v1, "MOSmsManager"

    const-string v2, "removeObsoletePending"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static removeOrphanThread()V
    .locals 3

    .prologue
    .line 775
    sget-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 776
    const-string v1, "MOSmsManager"

    const-string v2, "removeOrphanThread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/transaction/MOSmsManager$3;

    invoke-direct {v2}, Lcom/android/mms/transaction/MOSmsManager$3;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 789
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 790
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v1, "MOSmsManager"

    const-string v2, "removeOrphanThread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static resultCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "resultCode"    # I

    .prologue
    .line 795
    const-string v0, "UNKNOWN"

    .line 797
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 798
    const-string v0, "RADIO_OFF"

    .line 811
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

    .line 799
    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 800
    const-string v0, "NO_SERVICE"

    goto :goto_0

    .line 801
    :cond_2
    const/4 v1, -0x1

    if-ne p0, v1, :cond_3

    .line 802
    const-string v0, "RESULT_OK"

    goto :goto_0

    .line 803
    :cond_3
    const/4 v1, 0x6

    if-ne p0, v1, :cond_4

    .line 804
    const-string v0, "FDN_FAILURE"

    goto :goto_0

    .line 805
    :cond_4
    const/16 v1, 0xff

    if-ne p0, v1, :cond_5

    .line 806
    const-string v0, "TEMPORARY_ERROR"

    goto :goto_0

    .line 807
    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 808
    const-string v0, "GENERIC_ERROR"

    goto :goto_0
.end method

.method public static retrievePendingData(Landroid/net/Uri;Lcom/android/mms/transaction/PendingData;)V
    .locals 12
    .param p0, "messageUri"    # Landroid/net/Uri;
    .param p1, "data"    # Lcom/android/mms/transaction/PendingData;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 392
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "MOSmsManager"

    const-string v1, "retrievePendingData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/mms/transaction/PendingData;->pendingId:I

    .line 397
    iput v2, p1, Lcom/android/mms/transaction/PendingData;->retryCount:I

    .line 398
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    move-object v2, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 400
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 402
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 404
    .local v11, "rc":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 406
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 409
    .local v10, "msgId":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 412
    .local v8, "carry_msgId":I
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 413
    .local v9, "id":I
    if-ne v8, v10, :cond_5

    .line 414
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/mms/transaction/PendingData;->retryCount:I

    .line 415
    iput v9, p1, Lcom/android/mms/transaction/PendingData;->pendingId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .end local v8    # "carry_msgId":I
    .end local v9    # "id":I
    .end local v10    # "msgId":I
    :cond_1
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 425
    const/4 v11, 0x0

    .line 430
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 431
    const/4 v7, 0x0

    .line 435
    .end local v11    # "rc":Landroid/database/Cursor;
    :cond_3
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 436
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrievePendingData OUT, pending id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/mms/transaction/PendingData;->pendingId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/mms/transaction/PendingData;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_4
    return-void

    .line 418
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

    .line 424
    .end local v8    # "carry_msgId":I
    .end local v9    # "id":I
    .end local v10    # "msgId":I
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 425
    const/4 v11, 0x0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 430
    .end local v11    # "rc":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 431
    const/4 v7, 0x0

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
    .line 498
    .local p0, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 499
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/MOSmsManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/transaction/MOSmsManager$2;-><init>(Ljava/util/List;I)V

    .line 552
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "retry_multiple_sms"

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public static retrySms(Landroid/net/Uri;II)V
    .locals 4
    .param p0, "messageUri"    # Landroid/net/Uri;
    .param p1, "retryCount"    # I
    .param p2, "pendingId"    # I

    .prologue
    .line 444
    sget-boolean v1, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 445
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/MOSmsManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/transaction/MOSmsManager$1;-><init>(Landroid/net/Uri;II)V

    .line 493
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "retry_sms"

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public static sendSmsSendingStatusBroadcast(Landroid/net/Uri;Z)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "success"    # Z

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "messageId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.messaging.intent.SEND_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "SMS_SENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const-string v2, "id"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 307
    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method public static startRetryAttemptForPendingTable(III)V
    .locals 7
    .param p0, "pendingTableId"    # I
    .param p1, "msgId"    # I
    .param p2, "retryCount"    # I

    .prologue
    .line 363
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 364
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 372
    .local v3, "v":Landroid/content/ContentValues;
    const-string v0, "msg_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 375
    const-string v0, "retry_count"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    invoke-static {v0, v1, v4, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 377
    const-string v0, "first retry"

    invoke-static {v0}, Lcom/android/mms/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 389
    .end local v3    # "v":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 379
    .restart local v3    # "v":Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 380
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v4, p0

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 381
    .local v2, "retryMsgUri":Landroid/net/Uri;
    const-string v0, "retry_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string v0, "total_segments"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    const-string v0, "update retry"

    invoke-static {v0}, Lcom/android/mms/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v2    # "retryMsgUri":Landroid/net/Uri;
    .end local v3    # "v":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 387
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "MOSmsManager"

    const-string v1, "Messaging_Pending table does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateErrorToSmsTable(Landroid/net/Uri;II)V
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resultCode"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 193
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 194
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

    invoke-static {p1}, Lcom/android/mms/transaction/MOSmsManager;->resultCodeToString(I)Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 202
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "failure_cause"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v0, "error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public static updateMsgPendingId(II)V
    .locals 11
    .param p0, "old"    # I
    .param p1, "newId"    # I

    .prologue
    const/4 v4, 0x0

    .line 620
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 621
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    const/4 v7, 0x0

    .line 627
    .local v7, "found":Z
    const/4 v8, 0x1

    .local v8, "id":I
    const/4 v10, 0x1

    .line 628
    .local v10, "unique":I
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 630
    .local v9, "rc":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 632
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 635
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 636
    if-ne v10, p0, :cond_4

    .line 637
    const/4 v7, 0x1

    .line 643
    :cond_1
    if-eqz v7, :cond_2

    .line 644
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v4, v8

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 645
    .local v2, "msgUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 646
    .local v3, "v":Landroid/content/ContentValues;
    const-string v0, "msg_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const-string v0, "destinations_set_id"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v0, "total_segments"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    .end local v2    # "msgUri":Landroid/net/Uri;
    .end local v3    # "v":Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 654
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMsgPendingId"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_3
    const-string v0, "update msg id"

    invoke-static {v0}, Lcom/android/mms/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V

    .line 659
    return-void

    .line 640
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 654
    const-string v1, "MOSmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMsgPendingId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 337
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 338
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 348
    .local v3, "v":Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 349
    add-int/lit8 p2, p2, 0x1

    .line 350
    const-string v0, "total_segments"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    :cond_1
    invoke-static {v3, p2, p3, p4}, Lcom/android/mms/transaction/MOSmsManager;->addErrorCodeToPendingTable(Landroid/content/ContentValues;III)V

    .line 354
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v3    # "v":Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v6

    .line 358
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "MOSmsManager"

    const-string v1, "Messaging_Pending table does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateSegmentInPendingTable(IIZ)I
    .locals 13
    .param p0, "msgId"    # I
    .param p1, "destsSetId"    # I
    .param p2, "oneSeg"    # Z

    .prologue
    const/4 v4, 0x0

    .line 566
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 567
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 574
    .local v7, "c":Landroid/database/Cursor;
    const/4 v9, -0x1

    .line 575
    .local v9, "id":I
    const/4 v11, -0x1

    .line 577
    .local v11, "pendingTableId":I
    if-eqz v7, :cond_4

    .line 579
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 581
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 582
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 583
    .local v10, "msgIdStored":I
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 584
    .local v8, "destsSetIdStored":I
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 586
    .local v12, "seg":I
    if-ne v10, p0, :cond_6

    .line 587
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 588
    .local v3, "v":Landroid/content/ContentValues;
    move v8, p1

    .line 589
    if-nez v12, :cond_2

    if-eqz p2, :cond_2

    .line 590
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 591
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_1
    const-string v0, "total_segments"

    add-int/lit8 v1, v12, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    :cond_2
    const-string v0, "destinations_set_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v4, v9

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    move v11, v9

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update segment, values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MOSmsManager;->dumpPendingTable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    .end local v3    # "v":Landroid/content/ContentValues;
    .end local v8    # "destsSetIdStored":I
    .end local v10    # "msgIdStored":I
    .end local v12    # "seg":I
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 612
    :cond_4
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 613
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_5
    return v11

    .line 604
    .restart local v8    # "destsSetIdStored":I
    .restart local v10    # "msgIdStored":I
    .restart local v12    # "seg":I
    :cond_6
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 608
    .end local v8    # "destsSetIdStored":I
    .end local v10    # "msgIdStored":I
    .end local v12    # "seg":I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateSmsStackType(Landroid/net/Uri;)V
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 171
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsStackType, uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 176
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isGSM()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 177
    .local v6, "stackType":I
    :cond_1
    const-string v0, "stack_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    move-object v2, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public static updateSmsStackType(Landroid/net/Uri;I)V
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "stackType"    # I

    .prologue
    const/4 v4, 0x0

    .line 182
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "MOSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsStackType, uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 187
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "stack_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;

    move-object v2, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 189
    return-void
.end method


# virtual methods
.method public moveMessageToFolder(Landroid/net/Uri;III)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "folder"    # I
    .param p3, "resultCode"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 154
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

    invoke-static {p2}, Lcom/android/mms/transaction/MOSmsManager;->folderToString(I)Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/android/mms/transaction/MOSmsManager;->sendSmsSendingStatusBroadcast(Landroid/net/Uri;Z)V

    .line 165
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p4, p3}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;III)Z

    .line 167
    invoke-static {p1}, Lcom/android/mms/transaction/MOSmsManager;->updateSmsStackType(Landroid/net/Uri;)V

    .line 168
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
