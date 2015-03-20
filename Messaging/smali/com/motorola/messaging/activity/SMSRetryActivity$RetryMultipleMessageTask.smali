.class Lcom/motorola/messaging/activity/SMSRetryActivity$RetryMultipleMessageTask;
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
    .line 350
    .local p1, "messageUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetryMultipleMessageTask;->mInternalMessageUriList:Ljava/util/List;

    .line 352
    iput p2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetryMultipleMessageTask;->mCommonDestId:I

    .line 353
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetryMultipleMessageTask;->mInternalMessageUriList:Ljava/util/List;

    iget v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$RetryMultipleMessageTask;->mCommonDestId:I

    invoke-static {v0, v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->retryMultipleSms(Ljava/util/List;I)V

    .line 357
    return-void
.end method
