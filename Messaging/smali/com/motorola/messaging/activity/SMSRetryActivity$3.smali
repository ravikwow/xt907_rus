.class Lcom/motorola/messaging/activity/SMSRetryActivity$3;
.super Ljava/lang/Object;
.source "SMSRetryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$positiveRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SMSRetryActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$3;->this$0:Lcom/motorola/messaging/activity/SMSRetryActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$3;->val$positiveRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$3;->val$positiveRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 424
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$3;->this$0:Lcom/motorola/messaging/activity/SMSRetryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 425
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$3;->this$0:Lcom/motorola/messaging/activity/SMSRetryActivity;

    # getter for: Lcom/motorola/messaging/activity/SMSRetryActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SMSRetryActivity;->access$100(Lcom/motorola/messaging/activity/SMSRetryActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 426
    return-void
.end method
