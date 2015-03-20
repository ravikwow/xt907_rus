.class final Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    .line 279
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 280
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    # getter for: Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/SmsReceiverService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    const-string v5, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handling incoming message - START: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 295
    .local v4, "serviceId":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 297
    .local v2, "flags":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    .line 299
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    const-string v5, "com.motorola.contracts.messaging.intent.SMS_SENT"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 303
    iget-object v5, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    # invokes: Lcom/motorola/messaging/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;)V
    invoke-static {v5, v3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->access$100(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    :goto_1
    invoke-static {v5, v4}, Lcom/motorola/messaging/receiver/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 326
    # getter for: Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/SmsReceiverService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    const-string v5, "SmsReceiverService"

    const-string v6, "Handling incoming message - END"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_2
    return-void

    .line 304
    :cond_3
    :try_start_1
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    iget-object v5, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    # invokes: Lcom/motorola/messaging/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v5, v3, v2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->access$200(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    iget-object v5, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    invoke-static {v5, v1}, Lcom/motorola/messaging/provider/SqliteManager;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    iget-object v5, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    goto :goto_1

    .line 306
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_4
    :try_start_3
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 307
    iget-object v5, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    # invokes: Lcom/motorola/messaging/transaction/SmsReceiverService;->handleBootCompleted()V
    invoke-static {v5}, Lcom/motorola/messaging/transaction/SmsReceiverService;->access$300(Lcom/motorola/messaging/transaction/SmsReceiverService;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    invoke-static {v6, v4}, Lcom/motorola/messaging/receiver/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    throw v5

    .line 308
    :cond_5
    :try_start_4
    const-string v5, "android.intent.action.MESSAGE_RESEND_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 309
    iget-object v5, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    # invokes: Lcom/motorola/messaging/transaction/SmsReceiverService;->handleResend(Landroid/content/Intent;)V
    invoke-static {v5, v3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->access$400(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :cond_6
    sget-object v5, Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;->ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 311
    iget-object v5, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    # invokes: Lcom/motorola/messaging/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v5, v3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->access$500(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 312
    :cond_7
    const-string v5, "com.motorola.contracts.messaging.intent.SEND_SMS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 313
    # getter for: Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/SmsReceiverService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 314
    const-string v5, "SmsReceiverService"

    const-string v6, "Send SMS message in background"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_8
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
