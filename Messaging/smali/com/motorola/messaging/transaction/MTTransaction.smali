.class public abstract Lcom/motorola/messaging/transaction/MTTransaction;
.super Lcom/motorola/messaging/transaction/Transaction;
.source "MTTransaction.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static final LOCKED_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    sput-boolean v1, Lcom/motorola/messaging/transaction/MTTransaction;->DEBUG:Z

    .line 57
    sget-boolean v0, Lcom/motorola/messaging/transaction/MTTransaction;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/MTTransaction;->LOCAL_LOG:Z

    .line 59
    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Lcom/motorola/messaging/provider/MessageProjection;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/transaction/MTTransaction;->LOCKED_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "settings"    # Lcom/motorola/messaging/transaction/TransactionSettings;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 0
    .param p1, "t"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/Transaction;-><init>(Lcom/motorola/messaging/transaction/Transaction;)V

    .line 73
    return-void
.end method

.method private loadLocationData(Lcom/motorola/messaging/pdu/NotificationInd;)V
    .locals 2
    .param p1, "notificationInd"    # Lcom/motorola/messaging/pdu/NotificationInd;

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    .line 277
    :cond_0
    if-eqz p1, :cond_1

    .line 278
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 282
    :cond_2
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 284
    :cond_3
    return-void
.end method

.method private notifyGroupMessageMoved(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 225
    const/4 v3, 0x2

    invoke-static {v3, p1}, Lcom/motorola/messaging/conversation/ConversationManager;->getThreadId(ILandroid/net/Uri;)J

    move-result-wide v1

    .line 226
    .local v1, "threadId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.conversations.ui.ComposeMessageActivity.THREAD_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "thread_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private persistLockAttribute(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 10
    .param p1, "oldUri"    # Landroid/net/Uri;
    .param p2, "newUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/motorola/messaging/transaction/MTTransaction;->LOCKED_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 184
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 186
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 189
    .local v9, "keepLocked":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {p2, v9, v0}, Lcom/motorola/messaging/transaction/SmsMessageSender;->updateLockField(Landroid/net/Uri;ILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v9    # "keepLocked":I
    :cond_0
    :goto_0
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 199
    :cond_1
    return-void

    .line 193
    :catch_0
    move-exception v8

    .line 194
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MTTransaction"

    const-string v1, "Failed on trying to update locked field from wap push to new mms database entry"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method private updateAddressIfNecessary(Ljava/lang/String;)V
    .locals 7
    .param p1, "pduAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 202
    invoke-static {p1, v6}, Lcom/motorola/messaging/contact/Contact;->getCached(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    .line 203
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    if-nez v0, :cond_0

    .line 204
    invoke-static {p1, v6}, Lcom/motorola/messaging/contact/Contact;->createContact(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    .line 206
    :cond_0
    new-instance v1, Lcom/motorola/messaging/contact/ContactList;

    invoke-direct {v1}, Lcom/motorola/messaging/contact/ContactList;-><init>()V

    .line 207
    .local v1, "contactList":Lcom/motorola/messaging/contact/ContactList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/motorola/messaging/conversation/Conversation;->get(Landroid/content/Context;Lcom/motorola/messaging/contact/ContactList;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v2

    .line 211
    .local v2, "conv":Lcom/motorola/messaging/conversation/Conversation;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/messaging/conversation/Conversation;->getMessageCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 213
    invoke-virtual {v2}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/contact/ContactList;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 214
    .local v3, "wapPushAddress":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    .end local v3    # "wapPushAddress":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 217
    .restart local v3    # "wapPushAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/contact/Contact;->setAddress(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/motorola/messaging/contact/RecipientIdCache;->updateNumbers(JLcom/motorola/messaging/contact/ContactList;)V

    goto :goto_0
.end method


# virtual methods
.method public loadDownloadData(Lcom/motorola/messaging/pdu/NotificationInd;)V
    .locals 3
    .param p1, "notificationInd"    # Lcom/motorola/messaging/pdu/NotificationInd;

    .prologue
    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    .line 256
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/NotificationInd;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_1

    .line 257
    sget-boolean v1, Lcom/motorola/messaging/transaction/MTTransaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 258
    const-string v1, "MTTransaction"

    const-string v2, "MMS-STATUS - From field is null"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    new-instance v1, Lcom/motorola/messaging/pdu/EncodedStringValue;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/motorola/messaging/pdu/NotificationInd;->setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1, v2}, Lcom/motorola/messaging/pdu/PduPersister;->persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/MTTransaction;->loadLocationData(Lcom/motorola/messaging/pdu/NotificationInd;)V

    .line 270
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v1, "MTTransaction"

    const-string v2, "Failed to save NotificationInd in constructor."

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto :goto_0
.end method

.method public loadDownloadData(Ljava/lang/String;)V
    .locals 6
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    .line 238
    const/4 v2, 0x0

    .line 241
    .local v2, "notificationInd":Lcom/motorola/messaging/pdu/NotificationInd;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 242
    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/motorola/messaging/pdu/NotificationInd;

    move-object v2, v0
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    invoke-direct {p0, v2}, Lcom/motorola/messaging/transaction/MTTransaction;->loadLocationData(Lcom/motorola/messaging/pdu/NotificationInd;)V

    .line 249
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Lcom/motorola/messaging/util/MmsException;
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

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v3}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto :goto_0
.end method

.method protected persistMTMMS(Lcom/motorola/messaging/pdu/RetrieveConf;)Landroid/net/Uri;
    .locals 8
    .param p1, "retrieveConf"    # Lcom/motorola/messaging/pdu/RetrieveConf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 132
    invoke-static {p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->validateMTMms(Lcom/motorola/messaging/pdu/GenericPdu;)V

    .line 135
    const/4 v4, 0x0

    invoke-static {p1, v6, v4}, Lcom/motorola/messaging/conversation/ConversationManager;->getRecipients(Lcom/motorola/messaging/pdu/RetrieveConf;ZZ)Ljava/util/Set;

    move-result-object v2

    .line 139
    .local v2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/RetrieveConf;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v4

    if-nez v4, :cond_1

    .line 140
    sget-boolean v4, Lcom/motorola/messaging/transaction/MTTransaction;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 141
    const-string v4, "MTTransaction"

    const-string v5, "MMS-STATUS - From field is null"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    new-instance v4, Lcom/motorola/messaging/pdu/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/motorola/messaging/pdu/RetrieveConf;->setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v1

    .line 148
    .local v1, "p":Lcom/motorola/messaging/pdu/PduPersister;
    sget-object v4, Lcom/motorola/messaging/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1, v4, v2}, Lcom/motorola/messaging/pdu/PduPersister;->persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v3

    .line 150
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 151
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/motorola/messaging/transaction/MTTransaction;->notifyGroupMessageMoved(Landroid/net/Uri;)V

    .line 157
    :cond_2
    :goto_0
    new-instance v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v4, 0x4

    const-string v5, "MMS_RECEIVED"

    invoke-direct {v0, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 158
    .local v0, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v4, "numParts"

    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 159
    invoke-virtual {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 162
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v4, v3}, Lcom/motorola/messaging/transaction/MTTransaction;->persistLockAttribute(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 166
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5, v6, v7, v7}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    return-object v3

    .line 152
    .end local v0    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    :cond_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->forceCanonicalAddressUpdate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/RetrieveConf;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/messaging/transaction/MTTransaction;->updateAddressIfNecessary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDownloadState(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "downloadState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/messaging/transaction/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/motorola/messaging/transaction/DownloadManager$Result;

    move-result-object v0

    .line 77
    .local v0, "result":Lcom/motorola/messaging/transaction/DownloadManager$Result;
    sget-object v1, Lcom/motorola/messaging/transaction/DownloadManager$Result;->EXPIRED:Lcom/motorola/messaging/transaction/DownloadManager$Result;

    if-ne v0, v1, :cond_0

    .line 78
    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->MMS_EXPIRED:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 79
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    const-string v2, "MMS-STATUS - Can not start download (MMS expired)"

    invoke-direct {v1, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    sget-object v1, Lcom/motorola/messaging/transaction/DownloadManager$Result;->SUCCESS:Lcom/motorola/messaging/transaction/DownloadManager$Result;

    if-eq v0, v1, :cond_1

    .line 82
    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 83
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    const-string v2, "MMS-STATUS - invalid download state"

    invoke-direct {v1, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_1
    return-void
.end method

.method protected treatMTException(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "exception":Ljava/lang/String;
    const-string v0, "org.apache.http.HttpException: 404"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v0, v6}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 92
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 93
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "MTTransaction"

    const-string v1, "MMS-STATUS - MMSC error: message not found (expired)"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "retr_st"

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/transaction/Transaction;->treatException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected treatNetworkRetrieveStatus(Lcom/motorola/messaging/pdu/RetrieveConf;)Z
    .locals 8
    .param p1, "retrieveConf"    # Lcom/motorola/messaging/pdu/RetrieveConf;

    .prologue
    const/4 v4, 0x0

    .line 104
    sget-boolean v0, Lcom/motorola/messaging/transaction/MTTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "MT MMS processed by framework"

    invoke-static {v0, p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/GenericPdu;)V

    .line 108
    :cond_0
    const/4 v6, 0x1

    .line 109
    .local v6, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 110
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/transaction/Transaction;->getRetrieveStatus(Lcom/motorola/messaging/pdu/RetrieveConf;)I

    move-result v7

    .line 111
    .local v7, "retrieveStatus":I
    sget-boolean v0, Lcom/motorola/messaging/transaction/MTTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 112
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    const/16 v0, 0x80

    if-eq v7, v0, :cond_2

    .line 116
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 117
    const-string v0, "retr_st"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v0, "resp_st"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v6, 0x0

    .line 128
    :cond_2
    return v6
.end method
