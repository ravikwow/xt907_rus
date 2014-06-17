.class public Lcom/android/mms/ui/SMSRetryActivity;
.super Landroid/app/Activity;
.source "SMSRetryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;,
        Lcom/android/mms/ui/SMSRetryActivity$RetryMultipleMessageTask;,
        Lcom/android/mms/ui/SMSRetryActivity$MultipleMessageRetryTask;,
        Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;,
        Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;,
        Lcom/android/mms/ui/SMSRetryActivity$CancelRetrySingleMessageTask;,
        Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FAILED_URI:Landroid/net/Uri;

.field private static final LOCAL_LOG:Z


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lcom/android/mms/ui/SMSRetryActivity;->DEBUG:Z

    .line 36
    sget-boolean v1, Lcom/android/mms/ui/SMSRetryActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/ui/SMSRetryActivity;->LOCAL_LOG:Z

    .line 39
    const-string v0, "//"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SMSRetryActivity;->FAILED_URI:Landroid/net/Uri;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;

    .line 362
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/mms/ui/SMSRetryActivity;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SMSRetryActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SMSRetryActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static initRetryMultiple(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5
    .param p0, "msgUriStringList"    # Ljava/lang/String;
    .param p1, "multipleDestId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {p2}, Lcom/android/mms/ui/SMSRetryActivity;->isComposerTopActivity(Landroid/content/Context;)Z

    move-result v0

    .line 114
    .local v0, "canDisplayDialog":Z
    sget-boolean v2, Lcom/android/mms/ui/SMSRetryActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "SMSRetryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRetryMultiple, mActivityResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    new-instance v1, Lcom/android/mms/ui/SMSRetryActivity$MultipleMessageRetryTask;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/mms/ui/SMSRetryActivity$MultipleMessageRetryTask;-><init>(Ljava/lang/String;IZLandroid/content/Context;)V

    .line 124
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v2

    const-string v3, "multiple_msg_retry"

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/android/mms/concurrent/TaskManager$Task;

    .line 125
    return-void
.end method

.method public static initRetrySingle(Landroid/net/Uri;IZLandroid/content/Context;)Z
    .locals 7
    .param p0, "msgUri"    # Landroid/net/Uri;
    .param p1, "errorCode"    # I
    .param p2, "retryNeeded"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, "isFailed":Z
    invoke-static {p3}, Lcom/android/mms/ui/SMSRetryActivity;->isComposerTopActivity(Landroid/content/Context;)Z

    move-result v4

    .line 92
    .local v4, "canDisplayDialog":Z
    sget-boolean v1, Lcom/android/mms/ui/SMSRetryActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "SMSRetryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRetrySingle, mActivityResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    sget-object v1, Lcom/android/mms/ui/SMSRetryActivity;->FAILED_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;-><init>(Landroid/net/Uri;ILandroid/content/Context;)V

    .line 100
    .local v0, "runnable":Ljava/lang/Runnable;
    const/4 v6, 0x1

    .line 106
    :goto_0
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "single_msg_retry"

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/android/mms/concurrent/TaskManager$Task;

    .line 108
    if-nez v6, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 102
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    new-instance v0, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SMSRetryActivity$SingleMessageRetryTask;-><init>(Landroid/net/Uri;IZZLandroid/content/Context;)V

    .restart local v0    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 108
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isComposerTopActivity(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 395
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 398
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 401
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 402
    sget-boolean v3, Lcom/android/mms/ui/SMSRetryActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 403
    const-string v3, "SMSRetryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top Activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lcom/android/mms/ui/SMSRetryActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 413
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 408
    goto :goto_0

    :cond_3
    move v0, v1

    .line 413
    goto :goto_0
.end method

.method private showRetryDialog(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "positiveRunnable"    # Ljava/lang/Runnable;
    .param p3, "negativeRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 420
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/mms/ui/SMSRetryActivity$3;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/SMSRetryActivity$3;-><init>(Lcom/android/mms/ui/SMSRetryActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/mms/ui/SMSRetryActivity$2;

    invoke-direct {v2, p0, p3}, Lcom/android/mms/ui/SMSRetryActivity$2;-><init>(Lcom/android/mms/ui/SMSRetryActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/SMSRetryActivity$1;

    invoke-direct {v1, p0, p3}, Lcom/android/mms/ui/SMSRetryActivity$1;-><init>(Lcom/android/mms/ui/SMSRetryActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;

    .line 445
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SMSRetryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 49
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 50
    .local v4, "extras":Landroid/os/Bundle;
    new-instance v11, Lcom/android/mms/transaction/SmsReceiverService$Retry;

    invoke-direct {v11, v4}, Lcom/android/mms/transaction/SmsReceiverService$Retry;-><init>(Landroid/os/Bundle;)V

    .line 51
    .local v11, "smsRetry":Lcom/android/mms/transaction/SmsReceiverService$Retry;
    invoke-virtual {v11}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getRetryType()I

    move-result v10

    .line 53
    .local v10, "retryType":I
    sget-boolean v14, Lcom/android/mms/ui/SMSRetryActivity;->LOCAL_LOG:Z

    if-eqz v14, :cond_0

    .line 54
    const-string v14, "SMSRetryActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onCreate, retryType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 81
    const-string v14, "SMSRetryActivity"

    const-string v15, "Wrong retry type. Can\'t display retry dialog"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SMSRetryActivity;->finish()V

    .line 85
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string v14, "title"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 60
    .local v12, "title":Ljava/lang/String;
    const-string v14, "error_code"

    const/4 v15, -0x1

    invoke-virtual {v4, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 61
    .local v3, "errorCode":I
    invoke-virtual {v11}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 62
    .local v6, "msgUri":Landroid/net/Uri;
    invoke-virtual {v11}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getPendingId()I

    move-result v7

    .line 63
    .local v7, "pendingId":I
    invoke-virtual {v11}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getRetryCount()I

    move-result v8

    .line 65
    .local v8, "retryCount":I
    new-instance v9, Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;

    invoke-direct {v9, v6, v8, v7}, Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;-><init>(Landroid/net/Uri;II)V

    .line 66
    .local v9, "retryTask":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/mms/ui/SMSRetryActivity$CancelRetrySingleMessageTask;

    invoke-direct {v1, v6, v7, v3}, Lcom/android/mms/ui/SMSRetryActivity$CancelRetrySingleMessageTask;-><init>(Landroid/net/Uri;II)V

    .line 67
    .local v1, "cancelRetryTask":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9, v1}, Lcom/android/mms/ui/SMSRetryActivity;->showRetryDialog(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 71
    .end local v1    # "cancelRetryTask":Ljava/lang/Runnable;
    .end local v3    # "errorCode":I
    .end local v6    # "msgUri":Landroid/net/Uri;
    .end local v7    # "pendingId":I
    .end local v8    # "retryCount":I
    .end local v9    # "retryTask":Ljava/lang/Runnable;
    .end local v12    # "title":Ljava/lang/String;
    :pswitch_1
    const-string v14, "title"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    .restart local v12    # "title":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getDestsCommonId()I

    move-result v2

    .line 73
    .local v2, "destsCommonId":I
    invoke-virtual {v11}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getUriList()Ljava/util/ArrayList;

    move-result-object v13

    .line 75
    .local v13, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v9, Lcom/android/mms/ui/SMSRetryActivity$RetryMultipleMessageTask;

    invoke-direct {v9, v13, v2}, Lcom/android/mms/ui/SMSRetryActivity$RetryMultipleMessageTask;-><init>(Ljava/util/List;I)V

    .line 76
    .restart local v9    # "retryTask":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SMSRetryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v1, v13, v14}, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 77
    .restart local v1    # "cancelRetryTask":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9, v1}, Lcom/android/mms/ui/SMSRetryActivity;->showRetryDialog(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 452
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 453
    return-void
.end method
