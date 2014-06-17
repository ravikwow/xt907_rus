.class Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;
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
    name = "MarkMessageAsFailedTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFailedUri:Landroid/net/Uri;

.field private mInternalErrorCode:I


# direct methods
.method constructor <init>(Landroid/net/Uri;ILandroid/content/Context;)V
    .locals 0
    .param p1, "failedUri"    # Landroid/net/Uri;
    .param p2, "errorCode"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;->mFailedUri:Landroid/net/Uri;

    .line 166
    iput-object p3, p0, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;->mContext:Landroid/content/Context;

    .line 167
    iput p2, p0, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;->mInternalErrorCode:I

    .line 168
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 171
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionManager;->getMOSmsManager()Lcom/android/mms/transaction/MOSmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;->mFailedUri:Landroid/net/Uri;

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;->mInternalErrorCode:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/mms/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$MarkMessageAsFailedTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 174
    return-void
.end method
