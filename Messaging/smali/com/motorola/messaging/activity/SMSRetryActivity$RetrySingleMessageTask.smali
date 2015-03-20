.class Lcom/motorola/messaging/activity/SMSRetryActivity$RetrySingleMessageTask;
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
    name = "RetrySingleMessageTask"
.end annotation


# instance fields
.field private mInternalMsgUri:Landroid/net/Uri;

.field private mInternalPendingId:I

.field private mInternalRetryCount:I


# direct methods
.method constructor <init>(Landroid/net/Uri;II)V
    .locals 0
    .param p1, "retryUri"    # Landroid/net/Uri;
    .param p2, "retryCount"    # I
    .param p3, "pendingId"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetrySingleMessageTask;->mInternalMsgUri:Landroid/net/Uri;

    .line 132
    iput p2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetrySingleMessageTask;->mInternalRetryCount:I

    .line 133
    iput p3, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetrySingleMessageTask;->mInternalPendingId:I

    .line 134
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetrySingleMessageTask;->mInternalMsgUri:Landroid/net/Uri;

    iget v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetrySingleMessageTask;->mInternalRetryCount:I

    iget v2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetrySingleMessageTask;->mInternalPendingId:I

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/transaction/MOSmsManager;->retrySms(Landroid/net/Uri;II)V

    .line 138
    return-void
.end method
