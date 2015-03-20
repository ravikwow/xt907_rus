.class Lcom/motorola/messaging/activity/ComposeMessageActivity$22;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$22;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$22;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$22;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2457
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2458
    return-void
.end method
