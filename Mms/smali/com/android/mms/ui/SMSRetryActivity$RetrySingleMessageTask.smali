.class Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;
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
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;->mInternalMsgUri:Landroid/net/Uri;

    .line 134
    iput p2, p0, Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;->mInternalRetryCount:I

    .line 135
    iput p3, p0, Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;->mInternalPendingId:I

    .line 136
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;->mInternalMsgUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;->mInternalRetryCount:I

    iget v2, p0, Lcom/android/mms/ui/SMSRetryActivity$RetrySingleMessageTask;->mInternalPendingId:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MOSmsManager;->retrySms(Landroid/net/Uri;II)V

    .line 140
    return-void
.end method
