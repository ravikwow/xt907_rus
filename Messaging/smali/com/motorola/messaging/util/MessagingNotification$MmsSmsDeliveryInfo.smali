.class final Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/util/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsSmsDeliveryInfo"
.end annotation


# instance fields
.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;J)V
    .locals 0
    .param p1, "ticker"    # Ljava/lang/CharSequence;
    .param p2, "timeMillis"    # J

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    .line 446
    iput-wide p2, p0, Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    .line 447
    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isStatusMessage"    # Z

    .prologue
    .line 450
    iget-object v0, p0, Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    # invokes: Lcom/motorola/messaging/util/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    invoke-static {p1, p2, v0, v1, v2}, Lcom/motorola/messaging/util/MessagingNotification;->access$200(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    .line 452
    return-void
.end method
