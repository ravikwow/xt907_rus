.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;)V
    .locals 0

    .prologue
    .line 5314
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 5316
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->access$5200(Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5318
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->access$5200(Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->getSavedUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5319
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mModel:Lcom/motorola/messaging/model/MediaModel;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->access$5300(Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->getRawContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5322
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5326
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 5324
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->access$5200(Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->processSaveMediaResult(Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;)V
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$5400(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;)V

    goto :goto_0
.end method
