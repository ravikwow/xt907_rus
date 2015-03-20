.class Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/DeliveryReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field recipient:Landroid/widget/TextView;

.field status:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/DeliveryReportActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/DeliveryReportActivity$1;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;-><init>()V

    return-void
.end method
