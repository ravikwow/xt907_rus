.class public Lcom/motorola/messaging/services/MessagingService;
.super Landroid/app/Service;
.source "MessagingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;,
        Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;
    }
.end annotation


# static fields
.field private static sRequestIdGen:I


# instance fields
.field private mHandler:Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;

.field private messagingServiceImpl:Lcom/motorola/contracts/messaging/IMessagingService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/motorola/messaging/services/MessagingService;->sRequestIdGen:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Lcom/motorola/messaging/services/MessagingService$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/services/MessagingService$1;-><init>(Lcom/motorola/messaging/services/MessagingService;)V

    iput-object v0, p0, Lcom/motorola/messaging/services/MessagingService;->messagingServiceImpl:Lcom/motorola/contracts/messaging/IMessagingService$Stub;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/services/MessagingService;Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/services/MessagingService;
    .param p1, "x1"    # Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/messaging/services/MessagingService;->doSend(Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/services/MessagingService;Lcom/motorola/contracts/messaging/Message;Lcom/motorola/contracts/messaging/IMessagingServiceCallback;I)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/services/MessagingService;
    .param p1, "x1"    # Lcom/motorola/contracts/messaging/Message;
    .param p2, "x2"    # Lcom/motorola/contracts/messaging/IMessagingServiceCallback;
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/services/MessagingService;->enqueueSendRequest(Lcom/motorola/contracts/messaging/Message;Lcom/motorola/contracts/messaging/IMessagingServiceCallback;I)I

    move-result v0

    return v0
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
    .line 223
    new-instance v3, Lcom/motorola/messaging/pdu/SendReq;

    invoke-direct {v3}, Lcom/motorola/messaging/pdu/SendReq;-><init>()V

    .line 225
    .local v3, "sendReq":Lcom/motorola/messaging/pdu/SendReq;
    if-eqz p5, :cond_0

    .line 226
    const v7, 0x7f0b0006

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, p3, v7}, Lcom/motorola/messaging/services/MessagingService;->fillMessageHeaders(Lcom/motorola/messaging/pdu/SendReq;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 232
    :goto_0
    sget-object v7, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/motorola/messaging/model/SmilModel;->createNew(Lcom/motorola/messaging/model/Model$CreationMode;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v5

    .line 233
    .local v5, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    new-instance v4, Lcom/motorola/messaging/model/SlideModel;

    invoke-direct {v4}, Lcom/motorola/messaging/model/SlideModel;-><init>()V

    .line 235
    .local v4, "slide":Lcom/motorola/messaging/model/SlideModel;
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/motorola/messaging/model/SmilModel;->addSlide(Lcom/motorola/messaging/model/SlideModel;)Z
    :try_end_0
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
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

    .line 242
    .local v6, "text":Lcom/motorola/messaging/model/TextModel;
    :try_start_1
    invoke-virtual {v4, v6}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    invoke-virtual {v6, p2}, Lcom/motorola/messaging/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-static {v3, v5}, Lcom/motorola/messaging/conversation/ConversationManager;->createDraftMmsMessage(Lcom/motorola/messaging/pdu/SendReq;Lcom/motorola/messaging/model/SmilModel;)Lcom/motorola/messaging/conversation/ConversationManager$MessageData;

    move-result-object v2

    .line 252
    .local v2, "msgData":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    invoke-virtual {v5}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 254
    if-nez v2, :cond_1

    const/4 v7, 0x0

    :goto_1
    return-object v7

    .line 228
    .end local v2    # "msgData":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    .end local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .end local v5    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    .end local v6    # "text":Lcom/motorola/messaging/model/TextModel;
    :cond_0
    const/4 v7, 0x0

    invoke-static {v3, p3, v7}, Lcom/motorola/messaging/services/MessagingService;->fillMessageHeaders(Lcom/motorola/messaging/pdu/SendReq;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 236
    .restart local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .restart local v5    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    new-instance v7, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v7}, Lcom/motorola/messaging/util/MmsException;-><init>()V

    throw v7

    .line 243
    .end local v0    # "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    .restart local v6    # "text":Lcom/motorola/messaging/model/TextModel;
    :catch_1
    move-exception v1

    .line 244
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "MessagingService"

    const-string v8, "Exception while manipulating text"

    invoke-static {v7, v8, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    new-instance v7, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v7}, Lcom/motorola/messaging/util/MmsException;-><init>()V

    throw v7

    .line 254
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "msgData":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    :cond_1
    iget-object v7, v2, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->uri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private doSend(Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;)V
    .locals 7
    .param p1, "request"    # Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    sget-boolean v3, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "MessagingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->requestId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v1, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->message:Lcom/motorola/contracts/messaging/Message;

    .line 104
    .local v1, "message":Lcom/motorola/contracts/messaging/Message;
    invoke-virtual {v1}, Lcom/motorola/contracts/messaging/Message;->getRecipientList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    iget-object v3, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->callback:Lcom/motorola/contracts/messaging/IMessagingServiceCallback;

    iget v4, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->requestId:I

    const-string v5, ""

    const/4 v6, 0x3

    invoke-interface {v3, v4, v5, v6}, Lcom/motorola/contracts/messaging/IMessagingServiceCallback;->onSendRequestFailed(ILjava/lang/String;I)V

    .line 112
    :cond_1
    return-void

    .line 109
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/contracts/messaging/Message;->getRecipientList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "recipient":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/motorola/messaging/services/MessagingService;->doSendToRecipient(Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doSendToRecipient(Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;Ljava/lang/String;)V
    .locals 13
    .param p1, "request"    # Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;
    .param p2, "recipient"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 115
    const-string v5, ""

    .line 117
    .local v5, "messageBody":Ljava/lang/String;
    iget-object v4, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->message:Lcom/motorola/contracts/messaging/Message;

    .line 118
    .local v4, "message":Lcom/motorola/contracts/messaging/Message;
    iget-object v1, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->callback:Lcom/motorola/contracts/messaging/IMessagingServiceCallback;

    .line 122
    .local v1, "callback":Lcom/motorola/contracts/messaging/IMessagingServiceCallback;
    invoke-virtual {v4}, Lcom/motorola/contracts/messaging/Message;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 123
    iget v10, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->requestId:I

    const/4 v11, 0x4

    invoke-interface {v1, v10, p2, v11}, Lcom/motorola/contracts/messaging/IMessagingServiceCallback;->onSendRequestFailed(ILjava/lang/String;I)V

    .line 158
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {p2}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {p2}, Lcom/motorola/messaging/contact/ContactUtils;->isAliasAddress(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/motorola/contracts/messaging/Message;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    :cond_2
    invoke-direct {p0, v5}, Lcom/motorola/messaging/services/MessagingService;->getBodyParams(Ljava/lang/String;)[I

    move-result-object v9

    .line 136
    .local v9, "smsParams":[I
    const/4 v7, 0x0

    .line 140
    .local v7, "messageUri":Landroid/net/Uri;
    :try_start_0
    sget-object v10, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v10}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v2

    .line 141
    .local v2, "contentRestrict":Lcom/motorola/messaging/model/ContentRestriction;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/motorola/messaging/model/ContentRestriction;->checkTextSize(I)V

    .line 143
    invoke-direct {p0, p2, v9}, Lcom/motorola/messaging/services/MessagingService;->isMMSRequired(Ljava/lang/String;[I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 144
    invoke-direct {p0, p2, v9}, Lcom/motorola/messaging/services/MessagingService;->isSubjectSendEnable(Ljava/lang/String;[I)Z

    move-result v0

    .line 145
    .local v0, "addSubject":Z
    invoke-virtual {v4}, Lcom/motorola/contracts/messaging/Message;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p2, v0}, Lcom/motorola/messaging/services/MessagingService;->sendMms(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v7

    .line 151
    .end local v0    # "addSubject":Z
    :goto_1
    iget v10, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->requestId:I

    invoke-interface {v1, v7, v10, p2}, Lcom/motorola/contracts/messaging/IMessagingServiceCallback;->onSendRequestProcessed(Landroid/net/Uri;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 153
    .end local v2    # "contentRestrict":Lcom/motorola/messaging/model/ContentRestriction;
    :catch_0
    move-exception v6

    .line 154
    .local v6, "messageSizeException":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    iget v10, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->requestId:I

    const/4 v11, 0x2

    invoke-interface {v1, v10, p2, v11}, Lcom/motorola/contracts/messaging/IMessagingServiceCallback;->onSendRequestFailed(ILjava/lang/String;I)V

    goto :goto_0

    .line 130
    .end local v6    # "messageSizeException":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    .end local v7    # "messageUri":Landroid/net/Uri;
    .end local v9    # "smsParams":[I
    :cond_3
    invoke-static {p0, p2}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableAddress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 131
    iget v10, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->requestId:I

    const/4 v11, 0x3

    invoke-interface {v1, v10, p2, v11}, Lcom/motorola/contracts/messaging/IMessagingServiceCallback;->onSendRequestFailed(ILjava/lang/String;I)V

    goto :goto_0

    .line 147
    .restart local v2    # "contentRestrict":Lcom/motorola/messaging/model/ContentRestriction;
    .restart local v7    # "messageUri":Landroid/net/Uri;
    .restart local v9    # "smsParams":[I
    :cond_4
    :try_start_1
    iget v10, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->flags:I

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/motorola/messaging/services/MessagingService;->isFlagEnable(II)Z

    move-result v8

    .line 148
    .local v8, "requestStatus":Z
    invoke-virtual {v4}, Lcom/motorola/contracts/messaging/Message;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p2, v10, v8}, Lcom/motorola/messaging/services/MessagingService;->sendSms(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    :try_end_1
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_1

    .line 155
    .end local v2    # "contentRestrict":Lcom/motorola/messaging/model/ContentRestriction;
    .end local v8    # "requestStatus":Z
    :catch_1
    move-exception v3

    .line 156
    .local v3, "exception":Ljava/lang/Throwable;
    iget v10, p1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->requestId:I

    invoke-interface {v1, v10, p2, v12}, Lcom/motorola/contracts/messaging/IMessagingServiceCallback;->onSendRequestFailed(ILjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private static encodeStrings([Ljava/lang/String;)[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 324
    array-length v0, p0

    .line 325
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 326
    new-array v1, v0, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .line 327
    .local v1, "encodedArray":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 328
    new-instance v3, Lcom/motorola/messaging/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "encodedArray":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private enqueueSendRequest(Lcom/motorola/contracts/messaging/Message;Lcom/motorola/contracts/messaging/IMessagingServiceCallback;I)I
    .locals 4
    .param p1, "message"    # Lcom/motorola/contracts/messaging/Message;
    .param p2, "callback"    # Lcom/motorola/contracts/messaging/IMessagingServiceCallback;
    .param p3, "flags"    # I

    .prologue
    .line 81
    sget v2, Lcom/motorola/messaging/services/MessagingService;->sRequestIdGen:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/motorola/messaging/services/MessagingService;->sRequestIdGen:I

    .line 83
    .local v2, "requestId":I
    new-instance v1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;-><init>(Lcom/motorola/messaging/services/MessagingService;Lcom/motorola/messaging/services/MessagingService$1;)V

    .line 84
    .local v1, "request":Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;
    iput-object p1, v1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->message:Lcom/motorola/contracts/messaging/Message;

    .line 85
    iput v2, v1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->requestId:I

    .line 86
    iput-object p2, v1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->callback:Lcom/motorola/contracts/messaging/IMessagingServiceCallback;

    .line 87
    iput p3, v1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->flags:I

    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 91
    .local v0, "handlerMessage":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    iget-object v3, p0, Lcom/motorola/messaging/services/MessagingService;->mHandler:Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return v2
.end method

.method private static fillMessageHeaders(Lcom/motorola/messaging/pdu/SendReq;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p1, "dests"    # [Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p1}, Lcom/motorola/messaging/services/MessagingService;->encodeStrings([Ljava/lang/String;)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    .line 303
    .local v0, "encodedNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUseCCForRecipients()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/SendReq;->setCc([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 312
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    new-instance v1, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v1, p2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setSubject(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 317
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 319
    return-object p1

    .line 307
    :cond_2
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/SendReq;->setTo([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    goto :goto_0
.end method

.method private getBodyParams(Ljava/lang/String;)[I
    .locals 4
    .param p1, "smsBody"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportNationalTable()Z

    move-result v1

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportLockingShiftTable()Z

    move-result v2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private isFlagEnable(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "flagConstant"    # I

    .prologue
    .line 173
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMMSRequired(Ljava/lang/String;[I)Z
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "smsParams"    # [I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "requireMMS":Z
    invoke-direct {p0, p2}, Lcom/motorola/messaging/services/MessagingService;->isSmsExceededLimit([I)Z

    move-result v1

    .line 263
    .local v1, "sendAsMMSSinceExceededLimit":Z
    invoke-static {p1}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/motorola/messaging/contact/ContactUtils;->isAliasAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 265
    :cond_0
    aget v7, p2, v6

    if-eq v7, v5, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailConvertToMmsOnMultipleSegmentsEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 268
    .local v2, "sendAsMMSSinceMultiSegments":Z
    :goto_0
    const/4 v7, 0x3

    aget v7, p2, v7

    if-eq v7, v5, :cond_3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailConvertToMmsOnNon7BitEncodingEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 272
    .local v3, "sendAsMMSSinceNon7BitEncoding":Z
    :goto_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    move v4, v5

    .line 274
    .local v4, "sendAsMMSSinceSMSEmailDisabled":Z
    :goto_2
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    if-eqz v4, :cond_5

    :cond_1
    move v0, v5

    .line 281
    .end local v2    # "sendAsMMSSinceMultiSegments":Z
    .end local v3    # "sendAsMMSSinceNon7BitEncoding":Z
    .end local v4    # "sendAsMMSSinceSMSEmailDisabled":Z
    :goto_3
    return v0

    :cond_2
    move v2, v6

    .line 265
    goto :goto_0

    .restart local v2    # "sendAsMMSSinceMultiSegments":Z
    :cond_3
    move v3, v6

    .line 268
    goto :goto_1

    .restart local v3    # "sendAsMMSSinceNon7BitEncoding":Z
    :cond_4
    move v4, v6

    .line 272
    goto :goto_2

    .restart local v4    # "sendAsMMSSinceSMSEmailDisabled":Z
    :cond_5
    move v0, v6

    .line 274
    goto :goto_3

    .line 278
    .end local v2    # "sendAsMMSSinceMultiSegments":Z
    .end local v3    # "sendAsMMSSinceNon7BitEncoding":Z
    .end local v4    # "sendAsMMSSinceSMSEmailDisabled":Z
    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private isSmsExceededLimit([I)Z
    .locals 4
    .param p1, "smsParams"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 295
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimitAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    aget v3, p1, v1

    const/4 v0, 0x3

    aget v0, p1, v0

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimit(Z)I

    move-result v0

    if-le v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isSubjectSendEnable(Ljava/lang/String;[I)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "smsParams"    # [I

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "subjectEnable":Z
    invoke-static {p1}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-direct {p0, p2}, Lcom/motorola/messaging/services/MessagingService;->isSmsExceededLimit([I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendMms(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 7
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "addSubject"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v6, 0x0

    .line 201
    .local v6, "messageUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v4

    .line 203
    .local v4, "persister":Lcom/motorola/messaging/pdu/PduPersister;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/services/MessagingService;->createTemporaryMmsMessage(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/motorola/messaging/pdu/PduPersister;Z)Landroid/net/Uri;

    move-result-object v6

    .line 205
    if-eqz v6, :cond_0

    .line 206
    new-instance v0, Lcom/motorola/messaging/transaction/MmsMessageSender;

    invoke-direct {v0, p0, v6}, Lcom/motorola/messaging/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/transaction/MmsMessageSender;->sendMessage(J)Z

    .line 209
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessagesByThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 212
    :cond_0
    return-object v6
.end method

.method private sendSms(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "requestStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 184
    const/4 v6, 0x0

    .line 186
    .local v6, "messageUri":Landroid/net/Uri;
    new-instance v0, Lcom/motorola/messaging/transaction/SmsMessageSender;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v4

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 187
    .local v0, "msgSender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 190
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/SmsMessageSender;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessagesByThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 192
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/SmsMessageSender;->getMessageUri()Landroid/net/Uri;

    move-result-object v6

    .line 194
    return-object v6
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/motorola/messaging/services/MessagingService;->messagingServiceImpl:Lcom/motorola/contracts/messaging/IMessagingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessagingService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    new-instance v1, Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;-><init>(Lcom/motorola/messaging/services/MessagingService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/messaging/services/MessagingService;->mHandler:Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;

    .line 165
    return-void
.end method
