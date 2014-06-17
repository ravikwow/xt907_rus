.class Lcom/android/mms/ui/SMSRetryActivity$1;
.super Ljava/lang/Object;
.source "SMSRetryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SMSRetryActivity;->showRetryDialog(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SMSRetryActivity;

.field final synthetic val$negativeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SMSRetryActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/mms/ui/SMSRetryActivity$1;->this$0:Lcom/android/mms/ui/SMSRetryActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SMSRetryActivity$1;->val$negativeRunnable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 439
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SMSRetryActivity$1;->val$negativeRunnable:Ljava/lang/Runnable;

    const-string v2, "cancel_sms_retry"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/android/mms/concurrent/TaskManager$Task;

    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$1;->this$0:Lcom/android/mms/ui/SMSRetryActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SMSRetryActivity;->finish()V

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$1;->this$0:Lcom/android/mms/ui/SMSRetryActivity;

    # getter for: Lcom/android/mms/ui/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/SMSRetryActivity;->access$100(Lcom/android/mms/ui/SMSRetryActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 442
    return-void
.end method
