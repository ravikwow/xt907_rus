.class public Lcom/motorola/messaging/provider/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# static fields
.field private static final CONTENT_URI_ALL_MESSAGES:Landroid/net/Uri;

.field private static final DELETE_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_LOG:Z

.field private static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final MSG_PROJECTION:[Ljava/lang/String;

.field private static final THREAD_PROJECTION:[Ljava/lang/String;

.field private static mInstance:Lcom/motorola/messaging/provider/Recycler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/provider/Recycler;->LOCAL_LOG:Z

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/provider/Recycler;->MSG_PROJECTION:[Ljava/lang/String;

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/provider/Recycler;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 63
    const-string v0, "content://mms-sms/complete-conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/provider/Recycler;->CONTENT_URI_ALL_MESSAGES:Landroid/net/Uri;

    .line 66
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "message_count"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/provider/Recycler;->THREAD_PROJECTION:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/provider/Recycler;->DELETE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteMessagesForThread(Landroid/content/Context;JI)Z
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "keep"    # I

    .prologue
    .line 336
    sget-boolean v2, Lcom/motorola/messaging/provider/Recycler;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 337
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMessagesForThread, threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    .line 341
    const/4 v2, 0x0

    .line 415
    :goto_0
    return v2

    .line 344
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 347
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/provider/Recycler;->DELETE_PROJECTION:[Ljava/lang/String;

    const-string v6, "locked=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 354
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_a

    .line 356
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 357
    .local v11, "count":I
    sub-int v17, v11, p4

    .line 358
    .local v17, "numberToDelete":I
    sget-boolean v2, Lcom/motorola/messaging/provider/Recycler;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 359
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMessagesForThread keep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " numberToDelete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_2
    if-gtz v17, :cond_3

    .line 364
    const/4 v2, 0x0

    .line 412
    :goto_1
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 369
    :cond_3
    :try_start_1
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->move(I)Z

    .line 370
    const-wide/16 v9, 0x0

    .line 374
    .local v9, "cntDeleted":J
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v18, "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v14, "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 379
    .local v19, "type":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 381
    .local v15, "msgId":J
    const-string v2, "mms"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 382
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_4

    .line 389
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 390
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->buildMultipleWhereClause(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 391
    .local v20, "whereClause":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5, v6}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v9, v2

    .line 395
    .end local v20    # "whereClause":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 396
    const-string v2, "_id"

    invoke-static {v2, v14}, Lcom/motorola/messaging/util/MessageUtils;->buildMultipleWhereClause(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 397
    .restart local v20    # "whereClause":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5, v6}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    add-long/2addr v9, v4

    .line 399
    .end local v20    # "whereClause":Ljava/lang/StringBuilder;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 401
    sget-boolean v2, Lcom/motorola/messaging/provider/Recycler;->LOCAL_LOG:Z

    if-eqz v2, :cond_7

    .line 402
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMessagesForThread cntDeleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_7
    new-instance v13, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v2, 0x3

    const-string v4, "MSG_DELETED"

    invoke-direct {v13, v2, v4}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 406
    .local v13, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v2, "numMsgs"

    invoke-virtual {v13, v2, v9, v10}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;J)V

    .line 407
    const-string v2, "limit"

    const-string v4, "maxThd"

    invoke-virtual {v13, v2, v4}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v13}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 410
    const-wide/16 v4, 0x0

    cmp-long v2, v9, v4

    if-lez v2, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 384
    .end local v13    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    :cond_8
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 412
    .end local v9    # "cntDeleted":J
    .end local v11    # "count":I
    .end local v14    # "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15    # "msgId":J
    .end local v17    # "numberToDelete":I
    .end local v18    # "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    .line 410
    .restart local v9    # "cntDeleted":J
    .restart local v11    # "count":I
    .restart local v13    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .restart local v14    # "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v15    # "msgId":J
    .restart local v17    # "numberToDelete":I
    .restart local v18    # "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "type":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 415
    .end local v9    # "cntDeleted":J
    .end local v11    # "count":I
    .end local v13    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .end local v14    # "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15    # "msgId":J
    .end local v17    # "numberToDelete":I
    .end local v18    # "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "type":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private deleteOldMessages(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-boolean v1, Lcom/motorola/messaging/provider/Recycler;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "Recycler"

    const-string v2, "deleteOldMessages"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    sget-object v1, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "simple"

    const-string v4, "true"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 114
    .local v3, "allThreadsUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/provider/Recycler;->THREAD_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 117
    .local v20, "threadCursor":Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 119
    .local v23, "totalMsgCount":I
    if-eqz v20, :cond_3

    .line 121
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    :cond_1
    move/from16 v0, v23

    int-to-long v1, v0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v1, v4

    long-to-int v0, v1

    move/from16 v23, v0

    .line 124
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_2
    invoke-static/range {v20 .. v20}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 129
    move/from16 v0, v23

    add-int/lit16 v0, v0, -0x2710

    move/from16 v23, v0

    .line 133
    :cond_3
    if-lez v23, :cond_8

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/messaging/provider/Recycler;->CONTENT_URI_ALL_MESSAGES:Landroid/net/Uri;

    sget-object v7, Lcom/motorola/messaging/provider/Recycler;->MSG_PROJECTION:[Ljava/lang/String;

    const-string v8, "locked=1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 141
    .local v14, "lockedMsgCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 142
    .local v13, "lockedMsgCount":I
    if-eqz v14, :cond_4

    .line 144
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    .line 146
    invoke-static {v14}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 150
    :cond_4
    sub-int v18, v23, v13

    .line 152
    .local v18, "numMsgsToDelete":I
    if-lez v18, :cond_8

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/messaging/provider/Recycler;->CONTENT_URI_ALL_MESSAGES:Landroid/net/Uri;

    sget-object v7, Lcom/motorola/messaging/provider/Recycler;->DELETE_PROJECTION:[Ljava/lang/String;

    const-string v8, "locked=0"

    const/4 v9, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalized_date ASC LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 161
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_8

    .line 162
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v19, "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v15, "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    :cond_5
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 172
    .local v24, "type":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 173
    .local v16, "msgId":J
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 175
    .local v21, "threadId":J
    const-string v1, "mms"

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 176
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_0
    invoke-static/range {v21 .. v22}, Lcom/motorola/messaging/conversation/Conversation;->removeConversationFromCache(J)V

    .line 181
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_5

    .line 184
    .end local v16    # "msgId":J
    .end local v21    # "threadId":J
    .end local v24    # "type":Ljava/lang/String;
    :cond_6
    invoke-static {v11}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 187
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 188
    const-string v1, "_id"

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Lcom/motorola/messaging/util/MessageUtils;->buildMultipleWhereClause(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 189
    .local v25, "whereClause":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    new-instance v12, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v1, 0x3

    const-string v2, "MSG_DELETED"

    invoke-direct {v12, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 192
    .local v12, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v1, "numMsgs"

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 193
    const-string v1, "limit"

    const-string v2, "maxMsg"

    invoke-virtual {v12, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v12}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 197
    .end local v12    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .end local v25    # "whereClause":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 198
    const-string v1, "_id"

    invoke-static {v1, v15}, Lcom/motorola/messaging/util/MessageUtils;->buildMultipleWhereClause(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 199
    .restart local v25    # "whereClause":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    new-instance v12, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v1, 0x3

    const-string v2, "MSG_DELETED"

    invoke-direct {v12, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 202
    .restart local v12    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v1, "numMsgs"

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 203
    const-string v1, "limit"

    const-string v2, "maxMsg"

    invoke-virtual {v12, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v12}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 210
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .end local v13    # "lockedMsgCount":I
    .end local v14    # "lockedMsgCursor":Landroid/database/Cursor;
    .end local v15    # "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18    # "numMsgsToDelete":I
    .end local v19    # "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v25    # "whereClause":Ljava/lang/StringBuilder;
    :cond_8
    return-void

    .line 127
    :catchall_0
    move-exception v1

    invoke-static/range {v20 .. v20}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v1

    .line 146
    .restart local v13    # "lockedMsgCount":I
    .restart local v14    # "lockedMsgCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    invoke-static {v14}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v1

    .line 178
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16    # "msgId":J
    .restart local v18    # "numMsgsToDelete":I
    .restart local v19    # "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "threadId":J
    .restart local v24    # "type":Ljava/lang/String;
    :cond_9
    :try_start_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0

    .line 184
    .end local v16    # "msgId":J
    .end local v21    # "threadId":J
    .end local v24    # "type":Ljava/lang/String;
    :catchall_2
    move-exception v1

    invoke-static {v11}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static getInstance()Lcom/motorola/messaging/provider/Recycler;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/motorola/messaging/provider/Recycler;->mInstance:Lcom/motorola/messaging/provider/Recycler;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/motorola/messaging/provider/Recycler;

    invoke-direct {v0}, Lcom/motorola/messaging/provider/Recycler;-><init>()V

    sput-object v0, Lcom/motorola/messaging/provider/Recycler;->mInstance:Lcom/motorola/messaging/provider/Recycler;

    .line 100
    :cond_0
    sget-object v0, Lcom/motorola/messaging/provider/Recycler;->mInstance:Lcom/motorola/messaging/provider/Recycler;

    return-object v0
.end method


# virtual methods
.method public deleteOldMessagesByThread(Landroid/content/Context;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J

    .prologue
    .line 220
    sget-boolean v0, Lcom/motorola/messaging/provider/Recycler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "Recycler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOldMessagesByThread this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/provider/Recycler;->getMessageLimit()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/messaging/provider/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-direct {p0, p1}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    .line 228
    :cond_1
    return-void
.end method

.method public deleteOldMessagesByThread(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 237
    sget-boolean v0, Lcom/motorola/messaging/provider/Recycler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "Recycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteOldMessagesByThread with URI, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    if-nez p2, :cond_2

    .line 242
    const-string v0, "Recycler"

    const-string v3, "Invalid uri while deleting old messages from thread"

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    const-wide/16 v10, 0x0

    .line 247
    .local v10, "threadId":J
    const/4 v8, 0x0

    .line 248
    .local v8, "msgDeleted":Z
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "msgId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 252
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 253
    .local v2, "contentUri":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 262
    :goto_1
    sget-object v3, Lcom/motorola/messaging/provider/Recycler;->MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND locked=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 268
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 271
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 275
    :cond_3
    sget-boolean v0, Lcom/motorola/messaging/provider/Recycler;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 276
    const-string v0, "Recycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "threadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v0, v10, v3

    if-eqz v0, :cond_5

    .line 280
    invoke-virtual {p0}, Lcom/motorola/messaging/provider/Recycler;->getMessageLimit()I

    move-result v0

    invoke-direct {p0, p1, v10, v11, v0}, Lcom/motorola/messaging/provider/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 284
    :cond_5
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 289
    :cond_6
    if-nez v8, :cond_1

    .line 290
    invoke-direct {p0, p1}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    goto :goto_0

    .line 255
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 256
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 258
    :cond_8
    const-string v0, "Recycler"

    const-string v3, "Invalid uri authority while deleting old messages from thread"

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getMessageLimit()I
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getConversationMessageLimit()I

    move-result v0

    return v0
.end method

.method public getMessageMaxLimit()I
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0x3e8

    return v0
.end method

.method public getMessageMinLimit()I
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0xa

    return v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "limit"    # I

    .prologue
    .line 308
    invoke-static {p2}, Lcom/motorola/messaging/settings/MessageSettings;->setConversationsMessageLimit(I)V

    .line 309
    return-void
.end method
