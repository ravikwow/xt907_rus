.class public Lcom/motorola/messaging/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/motorola/messaging/transaction/MessageSender;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private NORMAL_PRIORITY:I

.field private final mContext:Landroid/content/Context;

.field private final mMessageUri:Landroid/net/Uri;

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    sput-boolean v0, Lcom/motorola/messaging/transaction/MmsMessageSender;->DEBUG:Z

    .line 49
    sget-boolean v1, Lcom/motorola/messaging/transaction/MmsMessageSender;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/MmsMessageSender;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "priority"    # I
    .param p3, "location"    # Landroid/net/Uri;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x81

    iput v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mPriority:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->NORMAL_PRIORITY:I

    .line 71
    iput-object p1, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 73
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iput p2, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mPriority:I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x81

    iput v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mPriority:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->NORMAL_PRIORITY:I

    .line 63
    iput-object p1, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 65
    iget-object v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 180
    const/4 v0, 0x1

    new-array v5, v0, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .line 181
    const/4 v0, 0x0

    new-instance v1, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    .line 184
    :try_start_0
    new-instance v0, Lcom/motorola/messaging/pdu/ReadRecInd;

    new-instance v1, Lcom/motorola/messaging/pdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget v3, Lcom/motorola/messaging/pdu/PduHeaders;->CURRENT_MMS_VERSION:I

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/pdu/ReadRecInd;-><init>(Lcom/motorola/messaging/pdu/EncodedStringValue;[BII[Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/ReadRecInd;->setDate(J)V

    .line 193
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/pdu/PduPersister;->persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    .line 195
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "MmsMessageSender"

    const-string v1, "MMS-STATUS - Send Read Report"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/messaging/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/motorola/messaging/pdu/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string v1, "MmsMessageSender"

    const-string v2, "Invalid header value"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    .line 202
    const-string v1, "MmsMessageSender"

    const-string v2, "Persist message failed"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updatePreferencesHeaders(Lcom/motorola/messaging/pdu/SendReq;)V
    .locals 9
    .param p1, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    const/4 v8, 0x0

    const/16 v5, 0x81

    .line 152
    iget-object v3, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_key_mms_expiry"

    const-wide/32 v6, 0x93a80

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/motorola/messaging/pdu/SendReq;->setExpiry(J)V

    .line 159
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget v3, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mPriority:I

    iget v6, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->NORMAL_PRIORITY:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mPriority:I

    if-ne v3, v5, :cond_2

    .line 161
    :cond_0
    iput v5, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mPriority:I

    .line 165
    :cond_1
    :goto_0
    const-string v3, "pref_key_mms_priority"

    iget v6, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mPriority:I

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setPriority(I)V

    .line 169
    const-string v3, "pref_key_delivery_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 171
    .local v0, "dr":Z
    if-eqz v0, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Lcom/motorola/messaging/pdu/SendReq;->setDeliveryReport(I)V

    .line 174
    const-string v3, "pref_key_mms_read_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 176
    .local v2, "rr":Z
    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {p1, v4}, Lcom/motorola/messaging/pdu/SendReq;->setReadReport(I)V

    .line 177
    return-void

    .line 163
    .end local v0    # "dr":Z
    .end local v2    # "rr":Z
    :cond_2
    const/16 v3, 0x82

    iput v3, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mPriority:I

    goto :goto_0

    .restart local v0    # "dr":Z
    :cond_3
    move v3, v5

    .line 171
    goto :goto_1

    .restart local v2    # "rr":Z
    :cond_4
    move v4, v5

    .line 176
    goto :goto_2
.end method


# virtual methods
.method public sendMessage(J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    sget-boolean v0, Lcom/motorola/messaging/transaction/MmsMessageSender;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "MmsMessageSender"

    const-string v1, "sendMessage"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-string v1, "out"

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :goto_0
    return v2

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v5

    .line 98
    iget-object v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v1

    .line 99
    sget-boolean v0, Lcom/motorola/messaging/transaction/MmsMessageSender;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "MO MMS"

    invoke-static {v0, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/GenericPdu;)V

    .line 103
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v0

    const/16 v3, 0x80

    if-eq v0, v3, :cond_3

    .line 104
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    .line 107
    check-cast v0, Lcom/motorola/messaging/pdu/SendReq;

    .line 110
    invoke-direct {p0, v0}, Lcom/motorola/messaging/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/motorola/messaging/pdu/SendReq;)V

    .line 113
    const-string v3, "personal"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/messaging/pdu/SendReq;->setMessageClass([B)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 118
    invoke-static {v0}, Lcom/motorola/messaging/conversation/ConversationManager;->getRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v3

    .line 119
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    .line 121
    :goto_1
    if-nez v3, :cond_7

    .line 122
    invoke-static {v0}, Lcom/motorola/messaging/conversation/ConversationManager;->getBccRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    :cond_4
    move-object v8, v3

    move v3, v2

    move-object v2, v8

    .line 126
    :goto_2
    iget-object v6, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0, v2}, Lcom/motorola/messaging/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/motorola/messaging/pdu/SendReq;Ljava/util/Set;)V

    .line 129
    iget-object v2, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/motorola/messaging/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v2, v6}, Lcom/motorola/messaging/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 132
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_5

    .line 133
    const-string v2, "MmsMessageSender"

    const-string v5, "MMS-STATUS - Send new MMS"

    invoke-static {v2, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_5
    new-instance v2, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v5, 0x4

    const-string v6, "MMS_SENT"

    invoke-direct {v2, v5, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 137
    const-string v5, "numParts"

    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 138
    const-string v5, "size"

    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/SendReq;->getMessageSize()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;J)V

    .line 139
    const-string v0, "msgType"

    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 140
    const-string v0, "dest_cnt"

    invoke-virtual {v2, v0, v4}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 141
    const-string v0, "dest_bcc_cnt"

    invoke-virtual {v2, v0, v3}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 145
    iget-object v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/motorola/messaging/transaction/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 146
    iget-object v0, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v3, Lcom/motorola/messaging/transaction/TransactionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 147
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    move v4, v2

    .line 119
    goto :goto_1

    :cond_7
    move-object v8, v3

    move v3, v2

    move-object v2, v8

    goto :goto_2
.end method
