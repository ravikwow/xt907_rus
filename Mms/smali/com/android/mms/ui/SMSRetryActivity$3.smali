.class Lcom/android/mms/ui/SMSRetryActivity$3;
.super Ljava/lang/Object;
.source "SMSRetryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$positiveRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SMSRetryActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/mms/ui/SMSRetryActivity$3;->this$0:Lcom/android/mms/ui/SMSRetryActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SMSRetryActivity$3;->val$positiveRunnable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$3;->val$positiveRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$3;->this$0:Lcom/android/mms/ui/SMSRetryActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SMSRetryActivity;->finish()V

    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$3;->this$0:Lcom/android/mms/ui/SMSRetryActivity;

    # getter for: Lcom/android/mms/ui/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/SMSRetryActivity;->access$100(Lcom/android/mms/ui/SMSRetryActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 428
    return-void
.end method
