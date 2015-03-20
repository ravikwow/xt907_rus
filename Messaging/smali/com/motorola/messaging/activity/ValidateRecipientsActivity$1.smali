.class Lcom/motorola/messaging/activity/ValidateRecipientsActivity$1;
.super Ljava/lang/Object;
.source "ValidateRecipientsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ValidateRecipientsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ValidateRecipientsActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity$1;->this$0:Lcom/motorola/messaging/activity/ValidateRecipientsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 140
    iget-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity$1;->this$0:Lcom/motorola/messaging/activity/ValidateRecipientsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 141
    return-void
.end method
