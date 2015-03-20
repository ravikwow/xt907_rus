.class Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;
.super Lcom/motorola/messaging/conversation/ConversationManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$UTpersist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UTConversationManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/transaction/UTManager$UTpersist;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/transaction/UTManager$UTpersist;)V
    .locals 0

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->this$0:Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    invoke-direct {p0}, Lcom/motorola/messaging/conversation/ConversationManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$UTpersist;Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$UTpersist;
    .param p2, "x1"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 1437
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;-><init>(Lcom/motorola/messaging/transaction/UTManager$UTpersist;)V

    return-void
.end method

.method private persist(JLcom/motorola/messaging/pdu/SendReq;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;)Landroid/net/Uri;
    .locals 6
    .param p1, "threadId"    # J
    .param p3, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "persister"    # Lcom/motorola/messaging/pdu/PduPersister;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 1455
    const-string v3, "UTManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist, threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    const/4 v0, 0x0

    .line 1458
    .local v0, "newUri":Landroid/net/Uri;
    new-instance v2, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;-><init>(Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;J)V

    .line 1481
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v3

    const-string v4, "UT_persist"

    invoke-virtual {v3, v2, v4}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1483
    const-string v3, "persist"

    iget-object v4, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->this$0:Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    iget v4, v4, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mScheduledPersist:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/motorola/messaging/transaction/TransactionManager;->sleep(Ljava/lang/String;J)V

    .line 1484
    const-string v3, "UTManager"

    const-string v4, "PERSIST - START"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    invoke-static {p3}, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->getAllRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v1

    .line 1488
    .local v1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p5, p3, p4, v1}, Lcom/motorola/messaging/pdu/PduPersister;->persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v0

    .line 1490
    const-string v3, "UTManager"

    const-string v4, "PERSIST - END"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    return-object v0
.end method


# virtual methods
.method protected persist(ILjava/util/Set;Lcom/motorola/messaging/pdu/SendReq;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
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
    .line 1442
    .local p2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v1, -0x1

    .line 1443
    .local v1, "threadId":J
    if-eqz p2, :cond_0

    .line 1444
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/util/Set;)J

    move-result-wide v1

    .line 1449
    const-string v0, "UTManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTpersist, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    sget-object v5, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->persist(JLcom/motorola/messaging/pdu/SendReq;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
