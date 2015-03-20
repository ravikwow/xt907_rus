.class public Lcom/motorola/messaging/receiver/QuickMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickMessageReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createTemporaryMmsMessage(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/motorola/messaging/pdu/PduPersister;Z)Landroid/net/Uri;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "dests"    # [Ljava/lang/String;
    .param p4, "persister"    # Lcom/motorola/messaging/pdu/PduPersister;
    .param p5, "addSubject"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v3, Lcom/motorola/messaging/pdu/SendReq;

    invoke-direct {v3}, Lcom/motorola/messaging/pdu/SendReq;-><init>()V

    .line 161
    .local v3, "sendReq":Lcom/motorola/messaging/pdu/SendReq;
    if-eqz p5, :cond_0

    .line 162
    const v7, 0x7f0b0006

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, p3, v7}, Lcom/motorola/messaging/receiver/QuickMessageReceiver;->fillMessageHeaders(Lcom/motorola/messaging/pdu/SendReq;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 169
    :goto_0
    sget-object v7, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/motorola/messaging/model/SmilModel;->createNew(Lcom/motorola/messaging/model/Model$CreationMode;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v5

    .line 170
    .local v5, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    new-instance v4, Lcom/motorola/messaging/model/SlideModel;

    invoke-direct {v4}, Lcom/motorola/messaging/model/SlideModel;-><init>()V

    .line 172
    .local v4, "slide":Lcom/motorola/messaging/model/SlideModel;
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/motorola/messaging/model/SmilModel;->addSlide(Lcom/motorola/messaging/model/SlideModel;)Z
    :try_end_0
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    new-instance v6, Lcom/motorola/messaging/model/TextModel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    .local v6, "text":Lcom/motorola/messaging/model/TextModel;
    :try_start_1
    invoke-virtual {v4, v6}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    invoke-virtual {v6, p2}, Lcom/motorola/messaging/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {v3, v5}, Lcom/motorola/messaging/conversation/ConversationManager;->createDraftMmsMessage(Lcom/motorola/messaging/pdu/SendReq;Lcom/motorola/messaging/model/SmilModel;)Lcom/motorola/messaging/conversation/ConversationManager$MessageData;

    move-result-object v2

    .line 189
    .local v2, "msgData":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    invoke-virtual {v5}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 191
    if-nez v2, :cond_1

    const/4 v7, 0x0

    :goto_1
    return-object v7

    .line 164
    .end local v2    # "msgData":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    .end local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .end local v5    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    .end local v6    # "text":Lcom/motorola/messaging/model/TextModel;
    :cond_0
    const/4 v7, 0x0

    invoke-static {v3, p3, v7}, Lcom/motorola/messaging/receiver/QuickMessageReceiver;->fillMessageHeaders(Lcom/motorola/messaging/pdu/SendReq;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 173
    .restart local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .restart local v5    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    new-instance v7, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v7}, Lcom/motorola/messaging/util/MmsException;-><init>()V

    throw v7

    .line 180
    .end local v0    # "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    .restart local v6    # "text":Lcom/motorola/messaging/model/TextModel;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "QuickMsgReceiver"

    const-string v8, "Exception while manipulating text"

    invoke-static {v7, v8, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    new-instance v7, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v7}, Lcom/motorola/messaging/util/MmsException;-><init>()V

    throw v7

    .line 191
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "msgData":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    :cond_1
    iget-object v7, v2, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->uri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private static encodeStrings([Ljava/lang/String;)[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 219
    array-length v0, p0

    .line 220
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 221
    new-array v1, v0, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .line 222
    .local v1, "encodedArray":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 223
    new-instance v3, Lcom/motorola/messaging/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "encodedArray":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private static fillMessageHeaders(Lcom/motorola/messaging/pdu/SendReq;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p1, "dests"    # [Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1}, Lcom/motorola/messaging/receiver/QuickMessageReceiver;->encodeStrings([Ljava/lang/String;)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    .line 198
    .local v0, "encodedNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUseCCForRecipients()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/SendReq;->setCc([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 207
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    new-instance v1, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v1, p2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setSubject(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 212
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 214
    return-object p1

    .line 202
    :cond_2
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/SendReq;->setTo([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    goto :goto_0
.end method

.method private sendMms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "addSubject"    # Z

    .prologue
    .line 139
    invoke-static {p1}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v4

    .line 143
    .local v4, "persister":Lcom/motorola/messaging/pdu/PduPersister;
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/receiver/QuickMessageReceiver;->createTemporaryMmsMessage(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/motorola/messaging/pdu/PduPersister;Z)Landroid/net/Uri;

    move-result-object v7

    .line 144
    .local v7, "mmsMessage":Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 145
    new-instance v0, Lcom/motorola/messaging/transaction/MmsMessageSender;

    invoke-direct {v0, p1, v7}, Lcom/motorola/messaging/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/transaction/MmsMessageSender;->sendMessage(J)Z

    .line 148
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v0

    invoke-virtual {v0, p1, v7}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessagesByThread(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v7    # "mmsMessage":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v6

    .line 153
    .local v6, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v0, "QuickMsgReceiver"

    const-string v1, "Could not send sms in QuickMessageReceiver"

    invoke-static {v0, v1, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "requestStatus"    # Z

    .prologue
    .line 126
    :try_start_0
    new-instance v0, Lcom/motorola/messaging/transaction/SmsMessageSender;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 127
    .local v0, "msgSender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 130
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/SmsMessageSender;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessagesByThread(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "msgSender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v6

    .line 134
    .local v6, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v1, "QuickMsgReceiver"

    const-string v2, "Could not send sms in QuickMessageReceiver"

    invoke-static {v1, v2, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v13, "android.intent.extra.TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "body":Ljava/lang/String;
    const-string v13, "com.motorola.blur.util.messaging.QuickMessageUtil.extra.RECIPIENT_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "addresses":Ljava/lang/String;
    const-string v13, "com.motorola.blur.util.messaging.QuickMessageUtil.extra.REQUEST_STATUS"

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSmsReportState()Z

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 60
    .local v7, "requestStatus":Z
    sget-boolean v13, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v13, :cond_0

    .line 61
    const-string v13, "QuickMsgReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received an intent from Quickmessage to send: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 121
    :cond_1
    return-void

    .line 69
    :cond_2
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, ";"

    invoke-direct {v12, v4, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v12, "tokens":Ljava/util/StringTokenizer;
    :cond_3
    :goto_0
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 72
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "address":Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {v3}, Lcom/motorola/messaging/contact/ContactUtils;->isAliasAddress(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 76
    :cond_4
    const/4 v2, 0x1

    .line 79
    .local v2, "addSubject":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 80
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "smsEmailBody":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v13

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportNationalTable()Z

    move-result v14

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportLockingShiftTable()Z

    move-result v15

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v13, v14, v15, v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I

    move-result-object v6

    .line 87
    .local v6, "params":[I
    const/4 v13, 0x0

    aget v13, v6, v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailConvertToMmsOnMultipleSegmentsEnabled()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v9, 0x1

    .line 89
    .local v9, "sendAsMMSSinceMultiSegments":Z
    :goto_1
    const/4 v13, 0x3

    aget v13, v6, v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_6

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailConvertToMmsOnNon7BitEncodingEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v10, 0x1

    .line 93
    .local v10, "sendAsMMSSinceNon7BitEncoding":Z
    :goto_2
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimitAvailable()Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    aget v14, v6, v13

    const/4 v13, 0x3

    aget v13, v6, v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_7

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimit(Z)I

    move-result v13

    if-le v14, v13, :cond_8

    const/4 v8, 0x1

    .line 96
    .local v8, "sendAsMMSSinceExceededLimit":Z
    :goto_4
    if-nez v9, :cond_9

    if-nez v10, :cond_9

    if-nez v8, :cond_9

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5, v7}, Lcom/motorola/messaging/receiver/QuickMessageReceiver;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 87
    .end local v8    # "sendAsMMSSinceExceededLimit":Z
    .end local v9    # "sendAsMMSSinceMultiSegments":Z
    .end local v10    # "sendAsMMSSinceNon7BitEncoding":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 89
    .restart local v9    # "sendAsMMSSinceMultiSegments":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 93
    .restart local v10    # "sendAsMMSSinceNon7BitEncoding":Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 99
    .restart local v8    # "sendAsMMSSinceExceededLimit":Z
    :cond_9
    if-eqz v8, :cond_a

    .line 101
    const/4 v2, 0x0

    .line 104
    .end local v6    # "params":[I
    .end local v8    # "sendAsMMSSinceExceededLimit":Z
    .end local v9    # "sendAsMMSSinceMultiSegments":Z
    .end local v10    # "sendAsMMSSinceNon7BitEncoding":Z
    .end local v11    # "smsEmailBody":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/motorola/messaging/receiver/QuickMessageReceiver;->sendMms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 107
    .end local v2    # "addSubject":Z
    :cond_b
    invoke-static {v3}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 108
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v13

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportNationalTable()Z

    move-result v14

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportLockingShiftTable()Z

    move-result v15

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v5, v13, v14, v15, v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I

    move-result-object v6

    .line 113
    .restart local v6    # "params":[I
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimitAvailable()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    aget v14, v6, v13

    const/4 v13, 0x3

    aget v13, v6, v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_c

    const/4 v13, 0x1

    :goto_5
    invoke-static {v13}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimit(Z)I

    move-result v13

    if-le v14, v13, :cond_d

    .line 115
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5, v13}, Lcom/motorola/messaging/receiver/QuickMessageReceiver;->sendMms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 113
    :cond_c
    const/4 v13, 0x0

    goto :goto_5

    .line 117
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5, v7}, Lcom/motorola/messaging/receiver/QuickMessageReceiver;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
