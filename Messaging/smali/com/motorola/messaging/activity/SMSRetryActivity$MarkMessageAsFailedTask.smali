.class Lcom/motorola/messaging/activity/SMSRetryActivity$MarkMessageAsFailedTask;
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
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MarkMessageAsFailedTask;->mFailedUri:Landroid/net/Uri;

    .line 164
    iput-object p3, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MarkMessageAsFailedTask;->mContext:Landroid/content/Context;

    .line 165
    iput p2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MarkMessageAsFailedTask;->mInternalErrorCode:I

    .line 166
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 169
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->getMOSmsManager()Lcom/motorola/messaging/transaction/MOSmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MarkMessageAsFailedTask;->mFailedUri:Landroid/net/Uri;

    const/4 v2, 0x5

    iget v3, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MarkMessageAsFailedTask;->mInternalErrorCode:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/motorola/messaging/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 171
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$MarkMessageAsFailedTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/motorola/messaging/util/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 172
    return-void
.end method
