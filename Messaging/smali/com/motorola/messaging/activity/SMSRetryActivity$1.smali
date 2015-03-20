.class Lcom/motorola/messaging/activity/SMSRetryActivity$1;
.super Ljava/lang/Object;
.source "SMSRetryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SMSRetryActivity;->showRetryDialog(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SMSRetryActivity;

.field final synthetic val$negativeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SMSRetryActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$1;->this$0:Lcom/motorola/messaging/activity/SMSRetryActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$1;->val$negativeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 437
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$1;->val$negativeRunnable:Ljava/lang/Runnable;

    const-string v2, "cancel_sms_retry"

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 438
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$1;->this$0:Lcom/motorola/messaging/activity/SMSRetryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 439
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$1;->this$0:Lcom/motorola/messaging/activity/SMSRetryActivity;

    # getter for: Lcom/motorola/messaging/activity/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SMSRetryActivity;->access$100(Lcom/motorola/messaging/activity/SMSRetryActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 440
    return-void
.end method
