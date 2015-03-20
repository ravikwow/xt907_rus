.class Lcom/motorola/messaging/activity/ComposeMessageActivity$39;
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
    .line 2872
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$39;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2875
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.contextual.location.ils.IlsShareLocation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2876
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$39;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2877
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2878
    return-void
.end method
