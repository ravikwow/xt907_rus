.class Lcom/motorola/messaging/activity/ComposeMessageActivity$55$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$55;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$55;)V
    .locals 0

    .prologue
    .line 3491
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$55;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3494
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$55;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3496
    :cond_0
    return-void
.end method
