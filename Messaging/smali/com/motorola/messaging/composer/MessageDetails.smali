.class public Lcom/motorola/messaging/composer/MessageDetails;
.super Ljava/lang/Object;
.source "MessageDetails.java"


# static fields
.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/composer/MessageDetails;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDebugDetails(Landroid/net/Uri;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "details"    # Ljava/lang/StringBuilder;

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0xa

    .line 291
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->reset()V

    .line 293
    invoke-static {}, Lcom/motorola/messaging/transaction/RetryScheduler;->getInstance()Lcom/motorola/messaging/transaction/RetryScheduler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/motorola/messaging/transaction/RetryScheduler;->getRetryData(Landroid/net/Uri;)Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;

    move-result-object v0

    .line 295
    .local v0, "data":Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempts to send/receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-wide v2, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->lastTry:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_2

    .line 303
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last try:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kk:mm:ss"

    iget-wide v4, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->lastTry:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_2
    iget-wide v2, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->dueTime:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_3

    .line 308
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry at:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kk:mm:ss"

    iget-wide v4, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->dueTime:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_3
    iget v2, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->errorType:I

    if-eqz v2, :cond_4

    .line 313
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->errorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_4
    invoke-static {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->getMMSErrorDetail(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "detail":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error detail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "size"    # I

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    .line 58
    :cond_0
    const-string v1, "mms"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 60
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 67
    :pswitch_0
    const-string v1, "MessageDetails"

    const-string v2, "MMS-STATUS - No details could be retrieved."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, ""

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-static {p0, p1}, Lcom/motorola/messaging/composer/MessageDetails;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/composer/MessageDetails;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 71
    .end local v0    # "type":I
    :cond_1
    invoke-static {p0, p1}, Lcom/motorola/messaging/composer/MessageDetails;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "size"    # I

    .prologue
    .line 150
    const/16 v24, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 151
    .local v21, "type":I
    const/16 v24, 0x82

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 152
    invoke-static/range {p0 .. p1}, Lcom/motorola/messaging/composer/MessageDetails;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v24

    .line 286
    :goto_0
    return-object v24

    .line 155
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v4, "details":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 158
    .local v15, "res":Landroid/content/res/Resources;
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 159
    .local v9, "id":J
    sget-object v24, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 163
    .local v22, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v11, "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    const v24, 0x7f0b00a9

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const v24, 0x7f0b00ab

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    instance-of v0, v11, Lcom/motorola/messaging/pdu/RetrieveConf;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v18, v11

    .line 176
    check-cast v18, Lcom/motorola/messaging/pdu/RetrieveConf;

    .line 177
    .local v18, "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    invoke-virtual/range {v18 .. v18}, Lcom/motorola/messaging/pdu/RetrieveConf;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/motorola/messaging/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, "from":Ljava/lang/String;
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    const v24, 0x7f0b00ad

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .end local v7    # "from":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v18    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :cond_1
    invoke-static {v11}, Lcom/motorola/messaging/conversation/ConversationManager;->getRecipients(Lcom/motorola/messaging/pdu/MultimediaMessagePdu;)Ljava/util/Set;

    move-result-object v14

    .line 187
    .local v14, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    const v24, 0x7f0b00ae

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    if-eqz v14, :cond_c

    .line 190
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 191
    .local v13, "recipient":Ljava/lang/String;
    invoke-static {v13}, Lcom/motorola/messaging/contact/ContactUtils;->isOnlineAlbumAddress(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 192
    const v24, 0x7f0b01a9

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :goto_3
    const-string v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 165
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    .end local v13    # "recipient":Ljava/lang/String;
    .end local v14    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 166
    .local v5, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v24, "MessageDetails"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MMS-STATUS - Failed to load the message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b00a7

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 180
    .end local v5    # "e":Lcom/motorola/messaging/util/MmsException;
    .restart local v7    # "from":Ljava/lang/String;
    .restart local v11    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    .restart local v18    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :cond_2
    const v24, 0x7f0b01a2

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 194
    .end local v7    # "from":Ljava/lang/String;
    .end local v18    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v13    # "recipient":Ljava/lang/String;
    .restart local v14    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 199
    .end local v13    # "recipient":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 207
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_4
    instance-of v0, v11, Lcom/motorola/messaging/pdu/SendReq;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v24, v11

    .line 208
    check-cast v24, Lcom/motorola/messaging/pdu/SendReq;

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/messaging/pdu/SendReq;->getBcc()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v23

    .line 209
    .local v23, "values":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v23, :cond_5

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_5

    .line 210
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    const v24, 0x7f0b00af

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static/range {v23 .. v23}, Lcom/motorola/messaging/pdu/EncodedStringValue;->concat([Lcom/motorola/messaging/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .end local v23    # "values":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_5
    const/16 v24, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 219
    .local v12, "msgBox":I
    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v12, v0, :cond_6

    .line 220
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v12, v0, :cond_d

    .line 222
    const v24, 0x7f0b00b2

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :goto_5
    invoke-virtual {v11}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->formatLongTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_6
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    const v24, 0x7f0b00b3

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v11}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getSubject()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v20

    .line 238
    .local v20, "subject":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v20, :cond_7

    .line 239
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v19

    .line 241
    .local v19, "subStr":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    add-int p2, p2, v24

    .line 242
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .end local v19    # "subStr":Ljava/lang/String;
    :cond_7
    const/16 v24, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 246
    .local v6, "failureType":I
    const/16 v24, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 248
    .local v17, "responseStatus":I
    const/16 v24, 0xa

    move/from16 v0, v24

    if-gt v6, v0, :cond_f

    if-lez v6, :cond_f

    .line 249
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f0b0105

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static/range {v17 .. v17}, Lcom/motorola/messaging/transaction/NetworkManager;->getMMSMOErrorDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "causeCode":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .end local v3    # "causeCode":Ljava/lang/String;
    :cond_8
    :goto_6
    const/16 v24, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 264
    .local v16, "resize":I
    if-eqz v16, :cond_9

    .line 265
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/motorola/messaging/composer/MessageDetails;->getResizeDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_9
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 271
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    const v24, 0x7f0b00b5

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v11}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/messaging/composer/MessageDetails;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_a
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const v24, 0x7f0b00b4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const v24, 0x7f0b0014

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    add-int/lit8 v27, p2, -0x1

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    sget-boolean v24, Lcom/motorola/messaging/logger/Logger;->IS_DEBUG_BUILD:Z

    if-eqz v24, :cond_b

    .line 283
    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/motorola/messaging/composer/MessageDetails;->getDebugDetails(Landroid/net/Uri;Ljava/lang/StringBuilder;)V

    .line 286
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 202
    .end local v6    # "failureType":I
    .end local v12    # "msgBox":I
    .end local v16    # "resize":I
    .end local v17    # "responseStatus":I
    .end local v20    # "subject":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_c
    const-string v24, "MessageDetails"

    const-string v25, "MMS-STATUS - Recipient list is empty!"

    invoke-static/range {v24 .. v25}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 223
    .restart local v12    # "msgBox":I
    :cond_d
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_e

    .line 224
    const v24, 0x7f0b00b1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 226
    :cond_e
    const v24, 0x7f0b00b0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 256
    .restart local v6    # "failureType":I
    .restart local v17    # "responseStatus":I
    .restart local v20    # "subject":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_f
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_10

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_8

    .line 257
    :cond_10
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f0b0105

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const v24, 0x7f0b015e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 76
    sget-boolean v14, Lcom/motorola/messaging/composer/MessageDetails;->LOCAL_LOG:Z

    if-eqz v14, :cond_0

    .line 77
    const-string v14, "MessageDetails"

    const-string v15, "getNotificationIndDetails"

    invoke-static {v14, v15}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v4, "details":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 83
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 84
    .local v7, "id":J
    sget-object v14, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 88
    .local v13, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/motorola/messaging/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v9, "nInd":Lcom/motorola/messaging/pdu/NotificationInd;
    const v14, 0x7f0b00a9

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const v14, 0x7f0b00ac

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v9}, Lcom/motorola/messaging/pdu/NotificationInd;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/motorola/messaging/util/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/motorola/messaging/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "from":Ljava/lang/String;
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    const v14, 0x7f0b00ad

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .end local v6    # "from":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    const v14, 0x7f0b0013

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Lcom/motorola/messaging/pdu/NotificationInd;->getExpiry()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->formatLongTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v9}, Lcom/motorola/messaging/pdu/NotificationInd;->getSubject()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v12

    .line 115
    .local v12, "subject":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v12, :cond_2

    .line 116
    sget-boolean v14, Lcom/motorola/messaging/composer/MessageDetails;->LOCAL_LOG:Z

    if-eqz v14, :cond_1

    .line 117
    const-string v14, "MessageDetails"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getNotificationIndDetails, subject"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    const v14, 0x7f0b00b3

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v12}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_2
    invoke-virtual {v9}, Lcom/motorola/messaging/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v14

    if-eqz v14, :cond_3

    .line 127
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const v14, 0x7f0b00ba

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/motorola/messaging/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_3
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    const v14, 0x7f0b00b4

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const v14, 0x7f0b0014

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Lcom/motorola/messaging/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v17

    const-wide/16 v19, 0x3ff

    add-long v17, v17, v19

    const-wide/16 v19, 0x400

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/16 v14, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 139
    .local v11, "retrieveStatus":I
    const/16 v14, 0x80

    if-eq v11, v14, :cond_4

    .line 140
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0b0105

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {v11}, Lcom/motorola/messaging/transaction/NetworkManager;->getMMSMTErrorDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "causeCode":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .end local v3    # "causeCode":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .end local v9    # "nInd":Lcom/motorola/messaging/pdu/NotificationInd;
    .end local v11    # "retrieveStatus":I
    .end local v12    # "subject":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :goto_1
    return-object v14

    .line 90
    :catch_0
    move-exception v5

    .line 91
    .local v5, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v14, "MessageDetails"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MMS-STATUS - Failed to load the message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b00a7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 103
    .end local v5    # "e":Lcom/motorola/messaging/util/MmsException;
    .restart local v6    # "from":Ljava/lang/String;
    .restart local v9    # "nInd":Lcom/motorola/messaging/pdu/NotificationInd;
    :cond_5
    const v14, 0x7f0b01a2

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "PriorityValue"    # I

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 438
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 445
    :pswitch_0
    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 440
    :pswitch_1
    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 442
    :pswitch_2
    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getResizeDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resizeStatus"    # I

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 451
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 458
    const-string v1, ""

    :goto_0
    return-object v1

    .line 453
    :pswitch_0
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 455
    :pswitch_1
    const v1, 0x7f0b00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v3, "details":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 329
    .local v8, "res":Landroid/content/res/Resources;
    const v14, 0x7f0b00a9

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const v14, 0x7f0b00aa

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 336
    .local v13, "stackType":I
    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 338
    .local v12, "smsType":I
    invoke-static {v12}, Lcom/motorola/messaging/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 339
    const v14, 0x7f0b00ae

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :goto_0
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    const/4 v14, 0x1

    if-ne v12, v14, :cond_b

    .line 348
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsNetworkTimestamp()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 350
    .local v1, "date":J
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-nez v14, :cond_0

    .line 351
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 354
    :cond_0
    const v14, 0x7f0b00b1

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->formatLongTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v1    # "date":J
    :cond_1
    :goto_2
    const/4 v14, 0x5

    if-ne v12, v14, :cond_c

    .line 364
    const v14, 0x7f0b00bb

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_2
    :goto_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v14

    if-eqz v14, :cond_4

    sget v14, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_CDMA:I

    if-ne v13, v14, :cond_4

    .line 380
    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    const v14, 0x7f0b00b5

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 383
    .local v6, "priority":I
    const v14, 0x7f0b00b7

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "priorityString":Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v6, v14, :cond_3

    .line 385
    const v14, 0x7f0b00b6

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 387
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .end local v6    # "priority":I
    .end local v7    # "priorityString":Ljava/lang/String;
    :cond_4
    const/16 v14, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 391
    .local v9, "resultCode":I
    const/16 v14, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 392
    .local v4, "errorCode":I
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 394
    .local v11, "smsMsgType":I
    sget-boolean v14, Lcom/motorola/messaging/composer/MessageDetails;->LOCAL_LOG:Z

    if-eqz v14, :cond_5

    .line 395
    const-string v14, "MessageDetails"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getTextMessageDetails, smsMsgType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", stackType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", resultCode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", errorCode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_5
    invoke-static {v9}, Lcom/motorola/messaging/composer/MessageDetails;->showErrorCode(I)Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x2

    if-eq v11, v14, :cond_6

    const/4 v14, 0x5

    if-ne v11, v14, :cond_10

    :cond_6
    const/4 v10, 0x1

    .line 404
    .local v10, "show":Z
    :goto_4
    if-eqz v10, :cond_8

    .line 405
    sget v14, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_CDMA:I

    if-ne v13, v14, :cond_11

    .line 407
    const/4 v14, -0x1

    if-ne v9, v14, :cond_7

    .line 408
    const v4, 0x8000

    .line 411
    :cond_7
    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0b0105

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {v9, v4}, Lcom/motorola/messaging/transaction/NetworkManager;->getCDMASMSErrorDescription(II)Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "errorDisplay":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .end local v5    # "errorDisplay":Ljava/lang/String;
    :cond_8
    :goto_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 341
    .end local v4    # "errorCode":I
    .end local v9    # "resultCode":I
    .end local v10    # "show":Z
    .end local v11    # "smsMsgType":I
    :cond_9
    const v14, 0x7f0b00ad

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 348
    :cond_a
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto/16 :goto_1

    .line 356
    :cond_b
    const/4 v14, 0x5

    if-eq v12, v14, :cond_1

    const/4 v14, 0x4

    if-eq v12, v14, :cond_1

    const/4 v14, 0x6

    if-eq v12, v14, :cond_1

    .line 357
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 358
    .restart local v1    # "date":J
    const v14, 0x7f0b00b0

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->formatLongTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 366
    .end local v1    # "date":J
    :cond_c
    const/4 v14, -0x1

    if-ne v13, v14, :cond_d

    .line 367
    const v14, 0x7f0b00bc

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 369
    :cond_d
    const/4 v14, 0x4

    if-eq v12, v14, :cond_e

    const/4 v14, 0x6

    if-ne v12, v14, :cond_2

    .line 370
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/composer/MessageDetails;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 371
    const v14, 0x7f0b00be

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 373
    :cond_f
    const v14, 0x7f0b00bd

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 402
    .restart local v4    # "errorCode":I
    .restart local v9    # "resultCode":I
    .restart local v11    # "smsMsgType":I
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 416
    .restart local v10    # "show":Z
    :cond_11
    sget v14, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_GSM:I

    if-ne v13, v14, :cond_8

    .line 418
    const/4 v14, -0x1

    if-eq v9, v14, :cond_8

    .line 419
    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0b0105

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_5
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static showErrorCode(I)Z
    .locals 1
    .param p0, "resultCode"    # I

    .prologue
    .line 433
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_FDN_CHECK_FAILURE:I

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
