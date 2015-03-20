.class public Lcom/motorola/messaging/receiver/SendMessageUriReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SendMessageUriReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onSendFailed(I)V
    .locals 0
    .param p1, "failedResult"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 122
    return-void
.end method

.method private onSendSuccess()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 113
    return-void
.end method

.method private sendMessage(Lcom/motorola/messaging/transaction/MmsMessageSender;J)V
    .locals 7
    .param p1, "sender"    # Lcom/motorola/messaging/transaction/MmsMessageSender;
    .param p2, "msgID"    # J

    .prologue
    const/16 v6, 0x1f4

    .line 132
    :try_start_0
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "SendMsgUriReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending Message, time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/motorola/messaging/transaction/MmsMessageSender;->sendMessage(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendSuccess()V

    .line 137
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_1

    .line 138
    const-string v2, "SendMsgUriReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent Message: Success, time is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_3

    .line 142
    const-string v2, "SendMsgUriReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent Message: Failed, time is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_3
    const/16 v2, 0x1f4

    invoke-direct {p0, v2}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "SendMsgUriReceiver"

    const-string v3, "Error with MmsMessageSender.sendMessage: "

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const/16 v2, 0xc8

    invoke-direct {p0, v2}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v2, "SendMsgUriReceiver"

    const-string v3, "Error with mms"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    goto :goto_0

    .line 152
    .end local v0    # "e":Lcom/motorola/messaging/util/MmsException;
    :catch_2
    move-exception v1

    .line 153
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "SendMsgUriReceiver"

    const-string v3, "Unknown error"

    invoke-static {v2, v3, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    invoke-direct {p0, v6}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 59
    .local v6, "msgUri":Landroid/net/Uri;
    sget-boolean v10, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v10, :cond_0

    .line 60
    const-string v10, "SendMsgUriReceiver"

    const-string v11, "onReceive"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    if-nez v6, :cond_1

    .line 64
    :try_start_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "No Uri is set in the intent data"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/pdu/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v10, "SendMsgUriReceiver"

    const-string v11, "Illegal type of message."

    invoke-static {v10, v11, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/16 v10, 0x64

    invoke-direct {p0, v10}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    .line 106
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_0
    return-void

    .line 68
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v7

    .line 69
    .local v7, "pStore":Lcom/motorola/messaging/pdu/PduPersister;
    invoke-virtual {v7, v6}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    .line 70
    .local v3, "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    const/16 v10, 0x80

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v11

    if-eq v10, v11, :cond_2

    .line 71
    new-instance v10, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v11, "Invalid Send request"

    invoke-direct {v10, v11}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/motorola/messaging/pdu/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 90
    .end local v3    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    .end local v7    # "pStore":Lcom/motorola/messaging/pdu/PduPersister;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "SendMsgUriReceiver"

    const-string v11, "Error Sending"

    invoke-static {v10, v11, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    const/16 v10, 0x64

    invoke-direct {p0, v10}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    .restart local v7    # "pStore":Lcom/motorola/messaging/pdu/PduPersister;
    :cond_2
    :try_start_2
    sget-object v10, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {p1, v10, v11, v12}, Lcom/motorola/messaging/model/SmilModel;->createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v8

    .line 77
    .local v8, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    sget-object v10, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v10}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 79
    .local v0, "contentRestrict":Lcom/motorola/messaging/model/ContentRestriction;
    invoke-virtual {v8}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/motorola/messaging/model/ContentRestriction;->checkNonTextMediaSize(I)V

    .line 80
    invoke-virtual {v8}, Lcom/motorola/messaging/model/SmilModel;->getTextSize()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/motorola/messaging/model/ContentRestriction;->checkTextSize(I)V

    .line 81
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 82
    .local v4, "msgId":J
    const-string v10, "send_token"

    invoke-virtual {p2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 83
    new-instance v2, Lcom/motorola/messaging/transaction/MmsMessageSender;

    invoke-direct {v2, p1, v6}, Lcom/motorola/messaging/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 84
    .local v2, "messageSender":Lcom/motorola/messaging/transaction/MmsMessageSender;
    invoke-direct {p0, v2, v4, v5}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->sendMessage(Lcom/motorola/messaging/transaction/MmsMessageSender;J)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/motorola/messaging/pdu/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 93
    .end local v0    # "contentRestrict":Lcom/motorola/messaging/model/ContentRestriction;
    .end local v2    # "messageSender":Lcom/motorola/messaging/transaction/MmsMessageSender;
    .end local v3    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    .end local v4    # "msgId":J
    .end local v7    # "pStore":Lcom/motorola/messaging/pdu/PduPersister;
    .end local v8    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :catch_2
    move-exception v1

    .line 94
    .local v1, "e":Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
    const-string v10, "SendMsgUriReceiver"

    const-string v11, "Error Sending"

    invoke-static {v10, v11, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/16 v10, 0x66

    invoke-direct {p0, v10}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    goto :goto_0

    .line 96
    .end local v1    # "e":Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
    :catch_3
    move-exception v1

    .line 97
    .local v1, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v10, "SendMsgUriReceiver"

    const-string v11, "Error Sending"

    invoke-static {v10, v11, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    const/16 v10, 0x65

    invoke-direct {p0, v10}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    goto :goto_0

    .line 99
    .end local v1    # "e":Lcom/motorola/messaging/util/MmsException;
    :catch_4
    move-exception v1

    .line 100
    .local v1, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    const-string v10, "SendMsgUriReceiver"

    const-string v11, "Error Sending"

    invoke-static {v10, v11, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    const/16 v10, 0x67

    invoke-direct {p0, v10}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    goto/16 :goto_0

    .line 102
    .end local v1    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    :catch_5
    move-exception v9

    .line 103
    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "SendMsgUriReceiver"

    const-string v11, "Error Sending"

    invoke-static {v10, v11, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    const/16 v10, 0x1f4

    invoke-direct {p0, v10}, Lcom/motorola/messaging/receiver/SendMessageUriReceiver;->onSendFailed(I)V

    goto/16 :goto_0
.end method
