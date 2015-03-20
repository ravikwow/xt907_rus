.class Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetrySingleMessageTask;
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
    name = "CancelRetrySingleMessageTask"
.end annotation


# instance fields
.field private mInternalErrorCode:I

.field private mInternalMsgUri:Landroid/net/Uri;

.field private mInternalPendingId:I


# direct methods
.method constructor <init>(Landroid/net/Uri;II)V
    .locals 0
    .param p1, "retryUri"    # Landroid/net/Uri;
    .param p2, "pendingId"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetrySingleMessageTask;->mInternalMsgUri:Landroid/net/Uri;

    .line 148
    iput p2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetrySingleMessageTask;->mInternalPendingId:I

    .line 149
    iput p3, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetrySingleMessageTask;->mInternalErrorCode:I

    .line 150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetrySingleMessageTask;->mInternalMsgUri:Landroid/net/Uri;

    iget v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetrySingleMessageTask;->mInternalPendingId:I

    iget v2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetrySingleMessageTask;->mInternalErrorCode:I

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/transaction/MOSmsManager;->cancelRetry(Landroid/net/Uri;II)V

    .line 154
    return-void
.end method
