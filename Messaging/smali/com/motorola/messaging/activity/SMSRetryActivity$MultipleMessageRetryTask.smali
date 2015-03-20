.class Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;
.super Ljava/lang/Object;
.source "SMSRetryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SMSRetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleMessageRetryTask"
.end annotation


# instance fields
.field private mCanDisplayDialog:Z

.field private mContext:Landroid/content/Context;

.field private mDestCommonIdForDests:I

.field private mMessageUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgUriStringList:Ljava/lang/String;

.field private mRecipients:Ljava/lang/String;

.field private mRetryCount:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZLandroid/content/Context;)V
    .locals 1
    .param p1, "msgUriStringList"    # Ljava/lang/String;
    .param p2, "commonIdForDests"    # I
    .param p3, "canDisplayDialog"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mMessageUriList:Ljava/util/ArrayList;

    .line 245
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mRetryCount:I

    .line 250
    iput-object p4, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mContext:Landroid/content/Context;

    .line 251
    iput p2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mDestCommonIdForDests:I

    .line 252
    iput-boolean p3, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mCanDisplayDialog:Z

    .line 253
    iput-object p1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mMsgUriStringList:Ljava/lang/String;

    .line 254
    return-void
.end method

.method private finishRetry()V
    .locals 7

    .prologue
    .line 266
    # getter for: Lcom/motorola/messaging/activity/SMSRetryActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SMSRetryActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "SMSRetryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishRetry, mDestCommonIdForDests="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mDestCommonIdForDests:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCanDisplayDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mCanDisplayDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 274
    new-instance v0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mMessageUriList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mDestCommonIdForDests:I

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;-><init>(Ljava/util/ArrayList;I)V

    .line 276
    iget-boolean v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mCanDisplayDialog:Z

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    const-string v1, "title"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0b006b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mRecipients:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/motorola/messaging/activity/SMSRetryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 291
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    invoke-static {v1, v2, v0, v3, v4}, Lcom/motorola/messaging/transaction/RetryScheduler;->setSmsRetryAlarm(Landroid/net/Uri;ZLcom/motorola/messaging/transaction/SmsReceiverService$Retry;J)V

    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mMessageUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;->run()V

    goto :goto_0
.end method

.method private parseMessageUriList(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "messageUriStringList"    # Ljava/lang/String;

    .prologue
    .line 294
    # getter for: Lcom/motorola/messaging/activity/SMSRetryActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SMSRetryActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string v1, "SMSRetryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDestinationsStrAndSetUris, bundle="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    const-string v1, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 299
    .local v14, "messageUriStrings":[Ljava/lang/String;
    new-instance v10, Lcom/motorola/messaging/transaction/PendingData;

    invoke-direct {v10}, Lcom/motorola/messaging/transaction/PendingData;-><init>()V

    .line 300
    .local v10, "data":Lcom/motorola/messaging/transaction/PendingData;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v16, "recipientsBuilder":Ljava/lang/StringBuilder;
    move-object v8, v14

    .local v8, "arr$":[Ljava/lang/String;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_5

    aget-object v13, v8, v11

    .line 303
    .local v13, "messageUriString":Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 304
    .local v3, "messageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 307
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 309
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    invoke-static {v3, v10}, Lcom/motorola/messaging/transaction/MOSmsManager;->retrievePendingData(Landroid/net/Uri;Lcom/motorola/messaging/transaction/PendingData;)V

    .line 311
    iget v15, v10, Lcom/motorola/messaging/transaction/PendingData;->pendingId:I

    .line 312
    .local v15, "pendingId":I
    iget v0, v10, Lcom/motorola/messaging/transaction/PendingData;->retryCount:I

    move/from16 v18, v0

    .line 313
    .local v18, "retryCount":I
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 315
    .local v17, "resultCode":I
    # getter for: Lcom/motorola/messaging/activity/SMSRetryActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SMSRetryActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const-string v1, "SMSRetryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseMessageUriList, pending id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mRetryCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", resultCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1
    invoke-static/range {v17 .. v17}, Lcom/motorola/messaging/transaction/MOSmsManager;->isTemporaryError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    move/from16 v0, v18

    if-ge v0, v1, :cond_4

    .line 324
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mMessageUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .end local v15    # "pendingId":I
    .end local v17    # "resultCode":I
    .end local v18    # "retryCount":I
    :cond_2
    :goto_1
    invoke-static {v9}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 302
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 328
    .restart local v15    # "pendingId":I
    .restart local v17    # "resultCode":I
    .restart local v18    # "retryCount":I
    :cond_4
    :try_start_1
    invoke-static {v15}, Lcom/motorola/messaging/transaction/MOSmsManager;->deletePending(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 332
    .end local v15    # "pendingId":I
    .end local v17    # "resultCode":I
    .end local v18    # "retryCount":I
    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v1

    .line 338
    .end local v3    # "messageUri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "messageUriString":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 339
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 342
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    # getter for: Lcom/motorola/messaging/activity/SMSRetryActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SMSRetryActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "SMSRetryActivity"

    const-string v1, "MultipleMessageRetryTask"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mMsgUriStringList:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->parseMessageUriList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->mRecipients:Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SMSRetryActivity$MultipleMessageRetryTask;->finishRetry()V

    .line 263
    return-void
.end method
