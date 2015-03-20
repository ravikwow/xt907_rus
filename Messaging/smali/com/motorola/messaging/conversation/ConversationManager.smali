.class public Lcom/motorola/messaging/conversation/ConversationManager;
.super Ljava/lang/Object;
.source "ConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final THREAD_PROJECTION:[Ljava/lang/String;

.field protected static mContext:Landroid/content/Context;

.field protected static mConversationManager:Lcom/motorola/messaging/conversation/ConversationManager;

.field protected static mPersister:Lcom/motorola/messaging/pdu/PduPersister;

.field protected static mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 59
    sput-boolean v1, Lcom/motorola/messaging/conversation/ConversationManager;->DEBUG:Z

    .line 60
    sget-boolean v0, Lcom/motorola/messaging/conversation/ConversationManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    .line 62
    sput-object v3, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    .line 63
    sput-object v3, Lcom/motorola/messaging/conversation/ConversationManager;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    .line 64
    sput-object v3, Lcom/motorola/messaging/conversation/ConversationManager;->mResolver:Landroid/content/ContentResolver;

    .line 65
    sput-object v3, Lcom/motorola/messaging/conversation/ConversationManager;->mConversationManager:Lcom/motorola/messaging/conversation/ConversationManager;

    .line 70
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    sput-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->THREAD_PROJECTION:[Ljava/lang/String;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "mid"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->PART_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static createDraftMmsMessage(Lcom/motorola/messaging/pdu/SendReq;Lcom/motorola/messaging/model/SmilModel;)Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    .locals 9
    .param p0, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p1, "smil"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 347
    sget-boolean v5, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 348
    const-string v5, "ConversationManager"

    const-string v6, "createDraftMmsMessage"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    :try_start_0
    sget-object v5, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/motorola/messaging/model/SmilModel;->toPduBody(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v3

    .line 353
    .local v3, "pb":Lcom/motorola/messaging/pdu/PduBody;
    invoke-virtual {p0, v3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setBody(Lcom/motorola/messaging/pdu/PduBody;)V

    .line 354
    sget-object v5, Lcom/motorola/messaging/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v5}, Lcom/motorola/messaging/conversation/ConversationManager;->persist(Lcom/motorola/messaging/pdu/SendReq;Landroid/net/Uri;)Lcom/motorola/messaging/conversation/ConversationManager$MessageData;

    move-result-object v4

    .line 355
    .local v4, "result":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    invoke-virtual {p1, v3}, Lcom/motorola/messaging/model/SmilModel;->sync(Lcom/motorola/messaging/pdu/PduBody;)V

    .line 357
    iget-object v5, v4, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 358
    .local v1, "id":J
    iget-wide v5, v4, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->threadId:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/motorola/messaging/conversation/ConversationManager;->deleteDraftMmsMessage(JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v1    # "id":J
    .end local v3    # "pb":Lcom/motorola/messaging/pdu/PduBody;
    .end local v4    # "result":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    :goto_0
    return-object v4

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v5, "ConversationManager"

    const-string v6, "Exception in createDraftMmsMessage"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v5, "ConversationManager"

    invoke-static {v0}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static deleteDraftMmsMessage(J)V
    .locals 1
    .param p0, "threadId"    # J

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/messaging/conversation/ConversationManager;->deleteDraftMmsMessage(JLjava/lang/String;)V

    .line 401
    return-void
.end method

.method private static deleteDraftMmsMessage(JLjava/lang/String;)V
    .locals 5
    .param p0, "threadId"    # J
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "whereClause":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_0
    sget-object v1, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/motorola/messaging/conversation/ConversationManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public static deleteDraftSmsMessage(J)V
    .locals 5
    .param p0, "threadId"    # J

    .prologue
    .line 393
    const-string v0, "type=3"

    .line 394
    .local v0, "SMS_DRAFT_WHERE":Ljava/lang/String;
    sget-object v1, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/motorola/messaging/conversation/ConversationManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public static deleteThread(J)V
    .locals 4
    .param p0, "threadId"    # J

    .prologue
    const/4 v3, 0x0

    .line 414
    sget-boolean v0, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "ConversationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteThread START, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    sget-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/conversation/ConversationManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 422
    sget-boolean v0, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "ConversationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteThread END, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    return-void
.end method

.method public static getAllRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;
    .locals 2
    .param p0, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/pdu/SendReq;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    invoke-static {p0}, Lcom/motorola/messaging/conversation/ConversationManager;->getRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v1

    .line 612
    .local v1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/motorola/messaging/conversation/ConversationManager;->getBccRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v0

    .line 614
    .local v0, "bccRecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 615
    if-nez v1, :cond_1

    .line 616
    move-object v1, v0

    .line 622
    :cond_0
    :goto_0
    return-object v1

    .line 619
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getBccRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;
    .locals 7
    .param p0, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/pdu/SendReq;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    const/4 v5, 0x0

    .line 574
    .local v5, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/SendReq;->getBcc()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v1

    .line 576
    .local v1, "bccRecipients":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 577
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 578
    .restart local v5    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 579
    .local v4, "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_0
    return-object v5
.end method

.method public static final getOrCreateThreadId(ZLcom/motorola/messaging/contact/ContactList;)J
    .locals 5
    .param p0, "isCreate"    # Z
    .param p1, "list"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 207
    sget-boolean v3, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 208
    const-string v3, "ConversationManager"

    const-string v4, "getOrCreateThreadId (ContactList)"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 212
    .local v2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 213
    .local v0, "c":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_1
    invoke-static {p0, v2}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/util/Set;)J

    move-result-wide v3

    return-wide v3
.end method

.method public static final getOrCreateThreadId(ZLjava/lang/String;)J
    .locals 3
    .param p0, "isCreate"    # Z
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 220
    sget-boolean v1, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "ConversationManager"

    const-string v2, "getOrCreateThreadId (address)"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    invoke-static {p1}, Lcom/motorola/messaging/util/MessageUtils;->isAnonymousMessage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const-string p1, ""

    .line 229
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 230
    .local v0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-static {p0, v0}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final getOrCreateThreadId(ZLjava/util/Set;)J
    .locals 8
    .param p0, "isCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 238
    sget-boolean v4, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 239
    const-string v4, "ConversationManager"

    const-string v5, "getOrCreateThreadId (recipients)"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    const-wide/16 v2, -0x1

    .line 243
    .local v2, "threadId":J
    const/4 v1, 0x0

    .line 247
    .local v1, "numAttempts":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 248
    :try_start_0
    sget-object v4, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/motorola/messaging/provider/Telephony$Threads;->notSafeGetOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 254
    :goto_0
    if-ne p0, v7, :cond_2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    .line 257
    :cond_2
    sget-boolean v4, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v4, :cond_3

    .line 258
    const-string v4, "ConversationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOrCreateThreadId (recipients), isCreate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v7, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 264
    :cond_3
    return-wide v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "ConversationManager"

    const-string v5, "MSG-STATUS - Unable to create/get thread id"

    invoke-static {v4, v5, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getRecipients(Lcom/motorola/messaging/pdu/MultimediaMessagePdu;)Ljava/util/Set;
    .locals 8
    .param p0, "msg"    # Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/pdu/MultimediaMessagePdu;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    const/4 v4, 0x0

    .line 588
    .local v4, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    instance-of v6, p0, Lcom/motorola/messaging/pdu/RetrieveConf;

    if-eqz v6, :cond_1

    .line 589
    check-cast p0, Lcom/motorola/messaging/pdu/RetrieveConf;

    .end local p0    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/motorola/messaging/conversation/ConversationManager;->getRecipients(Lcom/motorola/messaging/pdu/RetrieveConf;ZZ)Ljava/util/Set;

    move-result-object v4

    .line 602
    :cond_0
    :goto_0
    return-object v4

    .line 590
    .restart local p0    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    :cond_1
    instance-of v6, p0, Lcom/motorola/messaging/pdu/SendReq;

    if-eqz v6, :cond_2

    .line 591
    check-cast p0, Lcom/motorola/messaging/pdu/SendReq;

    .end local p0    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    invoke-static {p0}, Lcom/motorola/messaging/conversation/ConversationManager;->getRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    .line 593
    .restart local p0    # "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getTo()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v5

    .line 594
    .local v5, "toRecipients":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v5, :cond_0

    .line 595
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 596
    .restart local v4    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 597
    .local v3, "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getRecipients(Lcom/motorola/messaging/pdu/RetrieveConf;ZZ)Ljava/util/Set;
    .locals 21
    .param p0, "retrieveConf"    # Lcom/motorola/messaging/pdu/RetrieveConf;
    .param p1, "removeOwnPhone"    # Z
    .param p2, "removeFromPhone"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/pdu/RetrieveConf;",
            "ZZ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v15, "threadContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/pdu/RetrieveConf;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v7

    .line 464
    .local v7, "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v7, :cond_0

    .line 465
    const-string v18, "From"

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/motorola/messaging/conversation/ConversationManager;->showList(Ljava/lang/String;Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 466
    if-nez p2, :cond_0

    .line 467
    invoke-virtual {v7}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/pdu/RetrieveConf;->getCc()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v6

    .line 472
    .local v6, "ccContacts":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    const/4 v11, 0x0

    .line 473
    .local v11, "numOfCcRecipients":I
    if-eqz v6, :cond_2

    .line 474
    sget-boolean v18, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v18, :cond_1

    .line 475
    const-string v18, "Cc"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/motorola/messaging/conversation/ConversationManager;->showList(Ljava/lang/String;[Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 477
    :cond_1
    array-length v11, v6

    .line 478
    move-object v2, v6

    .local v2, "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v5, v2, v8

    .line 479
    .local v5, "ccAddress":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v5}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v5    # "ccAddress":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBcc()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v4

    .line 484
    .local v4, "bccContacts":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    const/4 v10, 0x0

    .line 485
    .local v10, "numOfBccRecipients":I
    if-eqz v4, :cond_4

    .line 486
    sget-boolean v18, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v18, :cond_3

    .line 487
    const-string v18, "Bcc"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/motorola/messaging/conversation/ConversationManager;->showList(Ljava/lang/String;[Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 489
    :cond_3
    array-length v10, v4

    .line 492
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_4

    .line 493
    move-object v2, v4

    .restart local v2    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v3, v2, v8

    .line 494
    .local v3, "bccAddress":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 499
    .end local v2    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v3    # "bccAddress":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getTo()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v17

    .line 500
    .local v17, "toContacts":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    const/4 v12, 0x0

    .line 501
    .local v12, "numOfToRecipients":I
    if-eqz v17, :cond_7

    .line 502
    sget-boolean v18, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v18, :cond_5

    .line 503
    const-string v18, "To"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/motorola/messaging/conversation/ConversationManager;->showList(Ljava/lang/String;[Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 505
    :cond_5
    move-object/from16 v0, v17

    array-length v12, v0

    .line 508
    if-nez v11, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_6

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 509
    :cond_6
    move-object/from16 v2, v17

    .restart local v2    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v9, :cond_7

    aget-object v16, v2, v8

    .line 510
    .local v16, "toAddress":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 516
    .end local v2    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v16    # "toAddress":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_7
    sget-object v18, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/motorola/messaging/contact/ContactUtils;->removeDuplicatedNumbers(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 518
    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 523
    sget-object v18, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/motorola/messaging/contact/ContactUtils;->removeOwnMSISDN(Landroid/content/Context;Ljava/util/List;)Z

    move-result v14

    .line 524
    .local v14, "result":Z
    sget-boolean v18, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v18, :cond_8

    .line 525
    const-string v18, "ConversationManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removed own phone number, result="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .end local v14    # "result":Z
    :cond_8
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 530
    .local v13, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v18, "All"

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/motorola/messaging/conversation/ConversationManager;->showList(Ljava/lang/String;Ljava/util/List;)V

    .line 532
    invoke-interface {v13, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 534
    return-object v13
.end method

.method public static getRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;
    .locals 8
    .param p0, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/pdu/SendReq;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    const/4 v5, 0x0

    .line 545
    .local v5, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getTo()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v6

    .line 547
    .local v6, "toRecipients":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v6, :cond_0

    .line 548
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 549
    .restart local v5    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 550
    .local v4, "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    .end local v0    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/SendReq;->getCc()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v1

    .line 555
    .local v1, "ccRecipients":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v1, :cond_2

    .line 556
    if-nez v5, :cond_1

    .line 557
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 559
    .restart local v5    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    move-object v0, v1

    .restart local v0    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 560
    .restart local v4    # "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 564
    .end local v0    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_2
    return-object v5
.end method

.method public static getThreadId(ILandroid/net/Uri;)J
    .locals 10
    .param p0, "tableId"    # I
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 136
    sget-boolean v0, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "ConversationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThreadId, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    const-wide/16 v8, 0x0

    .line 141
    .local v8, "threadId":J
    sget-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/conversation/ConversationManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/messaging/conversation/ConversationManager;->THREAD_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 144
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 145
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 148
    :cond_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 151
    :cond_2
    sget-boolean v0, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 152
    const-string v0, "ConversationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThreadId, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_3
    return-wide v8
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-boolean v0, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "ConversationManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    sput-object p0, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    .line 98
    sget-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->mResolver:Landroid/content/ContentResolver;

    .line 99
    sget-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    .line 100
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->getConversationManager()Lcom/motorola/messaging/conversation/ConversationManager;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->mConversationManager:Lcom/motorola/messaging/conversation/ConversationManager;

    .line 101
    return-void
.end method

.method public static insert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 269
    sget-boolean v3, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 270
    const-string v3, "ConversationManager"

    const-string v4, "insert"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    const/4 v1, 0x0

    .line 277
    .local v1, "numAttempts":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 278
    :try_start_0
    sget-boolean v3, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 279
    const-string v3, "ConversationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert, attempt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 287
    .local v2, "uriResult":Landroid/net/Uri;
    :goto_0
    if-nez v2, :cond_3

    const/4 v3, 0x3

    if-lt v1, v3, :cond_1

    .line 290
    :cond_3
    return-object v2

    .line 283
    .end local v2    # "uriResult":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ConversationManager"

    const-string v4, "MSG-STATUS - Unable to insert or create thread"

    invoke-static {v3, v4, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    const/4 v2, 0x0

    .restart local v2    # "uriResult":Landroid/net/Uri;
    goto :goto_0
.end method

.method private static persist(Lcom/motorola/messaging/pdu/SendReq;Landroid/net/Uri;)Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    .locals 11
    .param p0, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    .line 296
    sget-boolean v4, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 297
    const-string v4, "ConversationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist, uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v7, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 300
    :cond_0
    new-instance v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;

    invoke-direct {v3}, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;-><init>()V

    .line 301
    .local v3, "result":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    iput-wide v8, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->threadId:J

    .line 302
    iput-object v10, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->uri:Landroid/net/Uri;

    .line 303
    const/4 v1, 0x0

    .line 305
    .local v1, "numAttempt":I
    invoke-static {p0}, Lcom/motorola/messaging/conversation/ConversationManager;->getAllRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v2

    .line 309
    .local v2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 310
    :try_start_0
    sget-boolean v4, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v4, :cond_2

    .line 311
    const-string v4, "ConversationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist, attempt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_2
    sget-object v4, Lcom/motorola/messaging/conversation/ConversationManager;->mConversationManager:Lcom/motorola/messaging/conversation/ConversationManager;

    invoke-virtual {v4, v1, v2, p0, p1}, Lcom/motorola/messaging/conversation/ConversationManager;->persist(ILjava/util/Set;Lcom/motorola/messaging/pdu/SendReq;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->uri:Landroid/net/Uri;

    .line 316
    if-eqz v2, :cond_3

    .line 317
    const/4 v4, 0x1

    invoke-static {v4, v2}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/util/Set;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->threadId:J

    .line 320
    :cond_3
    sget-boolean v4, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v4, :cond_4

    .line 321
    const-string v4, "ConversationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist, threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->threadId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    iget-wide v4, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->threadId:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->uri:Landroid/net/Uri;

    if-nez v4, :cond_7

    :cond_6
    const/4 v4, 0x3

    if-lt v1, v4, :cond_1

    .line 332
    :cond_7
    sget-boolean v4, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v4, :cond_8

    .line 333
    const-string v4, "ConversationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_8
    return-object v3

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "ConversationManager"

    const-string v5, "MSG-STATUS - Unable to persist or create thread"

    invoke-static {v4, v5, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    iput-wide v8, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->threadId:J

    .line 326
    iput-object v10, v3, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->uri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static showList(Ljava/lang/String;Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "recipient"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 428
    sget-boolean v0, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "ConversationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method private static showList(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 447
    .local v2, "recipient":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 448
    const-string v3, "ConversationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "recipient":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static showList(Ljava/lang/String;[Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "recipients"    # [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 434
    sget-boolean v5, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, "i":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 437
    .local v4, "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    add-int/lit8 v1, v1, 0x1

    .line 438
    const-string v5, "ConversationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "recipient":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method public static updateDraftMmsMessage(Lcom/motorola/messaging/pdu/SendReq;Lcom/motorola/messaging/model/SmilModel;Landroid/net/Uri;)V
    .locals 7
    .param p0, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p1, "smil"    # Lcom/motorola/messaging/model/SmilModel;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 368
    sget-boolean v3, Lcom/motorola/messaging/conversation/ConversationManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 369
    const-string v3, "ConversationManager"

    const-string v4, "updateDraftMmsMessage uri=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_0
    if-nez p2, :cond_1

    .line 373
    const-string v3, "ConversationManager"

    const-string v4, "updateDraftMmsMessage null uri"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 378
    :cond_1
    if-eqz p0, :cond_2

    .line 379
    :try_start_0
    invoke-static {p0}, Lcom/motorola/messaging/conversation/ConversationManager;->getAllRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v2

    .line 380
    .local v2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/motorola/messaging/conversation/ConversationManager;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    invoke-virtual {v3, p2, p0, v2}, Lcom/motorola/messaging/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/motorola/messaging/pdu/SendReq;Ljava/util/Set;)V

    .line 382
    .end local v2    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    sget-object v3, Lcom/motorola/messaging/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/motorola/messaging/model/SmilModel;->toPduBody(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v1

    .line 383
    .local v1, "pb":Lcom/motorola/messaging/pdu/PduBody;
    sget-object v3, Lcom/motorola/messaging/conversation/ConversationManager;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    invoke-virtual {v3, p2, v1}, Lcom/motorola/messaging/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduBody;)V

    .line 384
    invoke-virtual {p1, v1}, Lcom/motorola/messaging/model/SmilModel;->sync(Lcom/motorola/messaging/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 385
    .end local v1    # "pb":Lcom/motorola/messaging/pdu/PduBody;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v3, "ConversationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v0    # "e":Lcom/motorola/messaging/util/MmsException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ConversationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDraftMmsMessage (IllegalArgumentException): cannot update message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected persist(ILjava/util/Set;Lcom/motorola/messaging/pdu/SendReq;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "numAttempt"    # I
    .param p3, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p4, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/motorola/messaging/pdu/SendReq;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 343
    .local p2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/motorola/messaging/conversation/ConversationManager;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    invoke-virtual {v0, p3, p4, p2}, Lcom/motorola/messaging/pdu/PduPersister;->persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
