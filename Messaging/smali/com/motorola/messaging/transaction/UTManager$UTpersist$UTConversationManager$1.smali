.class Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;
.super Ljava/lang/Object;
.source "UTManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->persist(JLcom/motorola/messaging/pdu/SendReq;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;J)V
    .locals 0

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->this$1:Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;

    iput-wide p2, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1460
    const-string v0, "delete"

    iget-object v1, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->this$1:Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;

    iget-object v1, v1, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->this$0:Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    iget v1, v1, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mScheduledDelete:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/transaction/TransactionManager;->sleep(Ljava/lang/String;J)V

    .line 1461
    const-string v0, "UTManager"

    const-string v1, "UT - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->this$1:Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;

    iget-object v0, v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->this$0:Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    iget-boolean v0, v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mDeleteThread:Z

    if-eqz v0, :cond_0

    .line 1463
    iget-wide v0, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->val$threadId:J

    invoke-static {v0, v1}, Lcom/motorola/messaging/conversation/ConversationManager;->deleteThread(J)V

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->this$1:Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;

    iget-object v0, v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->this$0:Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    iget-boolean v0, v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mDeleteSmsFromDraft:Z

    if-eqz v0, :cond_1

    .line 1467
    iget-wide v0, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->val$threadId:J

    invoke-static {v0, v1}, Lcom/motorola/messaging/conversation/ConversationManager;->deleteDraftSmsMessage(J)V

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->this$1:Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;

    iget-object v0, v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->this$0:Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    iget-boolean v0, v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mDeleteMmsFromDraft:Z

    if-eqz v0, :cond_2

    .line 1471
    iget-wide v0, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->val$threadId:J

    invoke-static {v0, v1}, Lcom/motorola/messaging/conversation/ConversationManager;->deleteDraftMmsMessage(J)V

    .line 1474
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager$1;->this$1:Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;

    iget-object v0, v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;->this$0:Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    iget-boolean v0, v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mCreateThread:Z

    if-eqz v0, :cond_3

    .line 1475
    const/4 v0, 0x1

    const-string v1, "1234"

    invoke-static {v0, v1}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/lang/String;)J

    .line 1478
    :cond_3
    const-string v0, "UTManager"

    const-string v1, "UT - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    return-void
.end method
