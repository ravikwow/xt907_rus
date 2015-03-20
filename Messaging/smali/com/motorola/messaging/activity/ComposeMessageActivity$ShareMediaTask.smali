.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMediaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mModel:Lcom/motorola/messaging/model/MediaModel;

.field private mResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/model/MediaModel;)V
    .locals 0
    .param p2, "model"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    .line 5295
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5296
    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mModel:Lcom/motorola/messaging/model/MediaModel;

    .line 5297
    return-void
.end method

.method static synthetic access$5200(Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    .prologue
    .line 5290
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;)Lcom/motorola/messaging/model/MediaModel;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    .prologue
    .line 5290
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mModel:Lcom/motorola/messaging/model/MediaModel;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5290
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 5308
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mModel:Lcom/motorola/messaging/model/MediaModel;

    const-string v1, "shared"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/model/MediaModel;->save(Ljava/lang/String;Z)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->mResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .line 5309
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5290
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 5314
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLastProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$5500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5331
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5332
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 5334
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 5302
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "progress_min_duration"

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5303
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 5304
    return-void
.end method
