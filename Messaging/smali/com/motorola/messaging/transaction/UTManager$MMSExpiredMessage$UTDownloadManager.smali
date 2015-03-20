.class Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage$UTDownloadManager;
.super Lcom/motorola/messaging/transaction/DownloadManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTDownloadManager"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/transaction/DownloadManager;-><init>(Landroid/content/Context;)V

    .line 566
    return-void
.end method


# virtual methods
.method protected getExpiry(Lcom/motorola/messaging/pdu/NotificationInd;)J
    .locals 2
    .param p1, "nInd"    # Lcom/motorola/messaging/pdu/NotificationInd;

    .prologue
    .line 570
    const-wide/16 v0, 0x0

    return-wide v0
.end method
