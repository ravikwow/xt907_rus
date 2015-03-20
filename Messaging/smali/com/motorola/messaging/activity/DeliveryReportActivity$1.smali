.class Lcom/motorola/messaging/activity/DeliveryReportActivity$1;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/DeliveryReportActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/DeliveryReportActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/DeliveryReportActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity$1;->this$0:Lcom/motorola/messaging/activity/DeliveryReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity$1;->this$0:Lcom/motorola/messaging/activity/DeliveryReportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 108
    return-void
.end method
