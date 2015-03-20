.class Lcom/motorola/messaging/activity/ComposeMessageActivity$26;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 2539
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$26;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$26;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 2543
    return-void
.end method
