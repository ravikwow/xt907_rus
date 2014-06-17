.class Lcom/android/mms/ui/SMSRetryActivity$RetryMultipleMessageTask;
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
    name = "RetryMultipleMessageTask"
.end annotation


# instance fields
.field private mCommonDestId:I

.field private mInternalMessageUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "commonDestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "messageUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/android/mms/ui/SMSRetryActivity$RetryMultipleMessageTask;->mInternalMessageUriList:Ljava/util/List;

    .line 354
    iput p2, p0, Lcom/android/mms/ui/SMSRetryActivity$RetryMultipleMessageTask;->mCommonDestId:I

    .line 355
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$RetryMultipleMessageTask;->mInternalMessageUriList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/SMSRetryActivity$RetryMultipleMessageTask;->mCommonDestId:I

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MOSmsManager;->retryMultipleSms(Ljava/util/List;I)V

    .line 359
    return-void
.end method
