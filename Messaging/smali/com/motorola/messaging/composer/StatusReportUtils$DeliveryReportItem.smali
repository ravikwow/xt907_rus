.class public Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;
.super Ljava/lang/Object;
.source "StatusReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/StatusReportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliveryReportItem"
.end annotation


# instance fields
.field public mRecipient:Ljava/lang/String;

.field public mStatus:I

.field public mStatusText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "statusText"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mRecipient:Ljava/lang/String;

    .line 476
    iput-object p3, p0, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mStatusText:Ljava/lang/String;

    .line 477
    iput p2, p0, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mStatus:I

    .line 478
    return-void
.end method
