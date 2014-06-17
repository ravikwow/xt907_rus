.class Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;
.super Ljava/lang/Object;
.source "SMSRetryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SMSRetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleMessageRetryTask"
.end annotation


# instance fields
.field private mCanDisplayDialog:Z

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mMessageUri:Landroid/net/Uri;

.field private mPendingId:I

.field private mRetryCount:I

.field private mRetryNeeded:Z


# direct methods
.method constructor <init>(Landroid/net/Uri;IZZLandroid/content/Context;)V
    .locals 1
    .param p1, "msgUri"    # Landroid/net/Uri;
    .param p2, "errorCode"    # I
    .param p3, "retryNeeded"    # Z
    .param p4, "canDisplayDialog"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryNeeded:Z

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryCount:I

    .line 188
    iput-object p5, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mContext:Landroid/content/Context;

    .line 189
    iput-boolean p4, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mCanDisplayDialog:Z

    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mMessageUri:Landroid/net/Uri;

    .line 192
    iput p2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mErrorCode:I

    .line 193
    iput-boolean p3, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryNeeded:Z

    .line 194
    return-void
.end method

.method private finishRetry()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 212
    # getter for: Lcom/android/mms/ui/SMSRetryActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/ui/SMSRetryActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "SMSRetryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishRetry, retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRetryNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCanDisplayDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mCanDisplayDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryNeeded:Z

    if-ne v0, v6, :cond_2

    .line 220
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$Retry;

    iget-object v1, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mMessageUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mPendingId:I

    iget v3, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryCount:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService$Retry;-><init>(Landroid/net/Uri;II)V

    .line 222
    iget-boolean v1, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mCanDisplayDialog:Z

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 224
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0194

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "error_code"

    iget v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/SMSRetryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {v1, v6, v0, v2, v3}, Lcom/android/mms/transaction/RetryScheduler;->setSmsRetryAlarm(Landroid/net/Uri;ZLcom/android/mms/transaction/SmsReceiverService$Retry;J)V

    goto :goto_0

    .line 235
    :cond_2
    new-instance v0, Lcom/android/mms/ui/SMSRetryActivity$CancelRetrySingleMessageTask;

    iget-object v1, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mMessageUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mPendingId:I

    iget v3, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mErrorCode:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/SMSRetryActivity$CancelRetrySingleMessageTask;-><init>(Landroid/net/Uri;II)V

    invoke-virtual {v0}, Lcom/android/mms/ui/SMSRetryActivity$CancelRetrySingleMessageTask;->run()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 197
    # getter for: Lcom/android/mms/ui/SMSRetryActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/ui/SMSRetryActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "SMSRetryActivity"

    const-string v2, "SingleMessageRetryTask"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    new-instance v1, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;

    iget-object v2, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mMessageUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mErrorCode:I

    iget-object v4, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;-><init>(Landroid/net/Uri;ILandroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;->run()V

    .line 204
    new-instance v0, Lcom/android/mms/transaction/PendingData;

    invoke-direct {v0}, Lcom/android/mms/transaction/PendingData;-><init>()V

    .line 205
    .local v0, "data":Lcom/android/mms/transaction/PendingData;
    iget-object v1, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mMessageUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/mms/transaction/MOSmsManager;->retrievePendingData(Landroid/net/Uri;Lcom/android/mms/transaction/PendingData;)V

    .line 206
    iget v1, v0, Lcom/android/mms/transaction/PendingData;->pendingId:I

    iput v1, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mPendingId:I

    .line 207
    iget v1, v0, Lcom/android/mms/transaction/PendingData;->retryCount:I

    iput v1, p0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->mRetryCount:I

    .line 208
    invoke-direct {p0}, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;->finishRetry()V

    .line 209
    return-void
.end method
