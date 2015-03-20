.class Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;
.super Landroid/app/AlertDialog;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClassZeroMessageDialog"
.end annotation


# instance fields
.field private mAlreadyCreated:Z

.field private mHandler:Landroid/os/Handler;

.field private mSms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

.field private mTimer:J

.field final synthetic this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;


# direct methods
.method protected constructor <init>(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    .line 369
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 448
    new-instance v0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;-><init>(Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mHandler:Landroid/os/Handler;

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mAlreadyCreated:Z

    .line 371
    return-void
.end method

.method static synthetic access$500(Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;)Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mSms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 422
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    return-void
.end method

.method public getSmsMessage()Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mSms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 388
    .local v0, "time_now":J
    if-eqz p1, :cond_2

    .line 389
    const-string v2, "TIMER_FIRE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mTimer:J

    .line 390
    # getter for: Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const-string v2, "ClassZeroMessageDialog"

    const-string v3, "we got savedInstanceState"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mAlreadyCreated:Z

    .line 398
    # getter for: Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    const-string v2, "ClassZeroMessageDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate + mTimer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mTimer:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_1
    return-void

    .line 393
    :cond_2
    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mAlreadyCreated:Z

    if-nez v2, :cond_0

    .line 394
    const-wide/32 v2, 0x493e0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mTimer:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 428
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 429
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 432
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v1, "timer_fire"

    iget-wide v2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mTimer:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 433
    # getter for: Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    const-string v1, "ClassZeroMessageDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mTimer:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_1
    return-object v0
.end method

.method public setSmsMessage(Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;)V
    .locals 0
    .param p1, "msg"    # Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mSms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    .line 442
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 405
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 406
    iget-wide v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mTimer:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mSms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->saveMessage(Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;Z)V

    .line 408
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->dismiss()V

    .line 409
    invoke-static {p0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->removeDialog(Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    # invokes: Lcom/motorola/messaging/activity/ClassZeroActivity;->checkIfFinish()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$100(Lcom/motorola/messaging/activity/ClassZeroActivity;)V

    .line 411
    # getter for: Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "ClassZeroMessageDialog"

    const-string v1, "timer expired, dismiss"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mTimer:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method
