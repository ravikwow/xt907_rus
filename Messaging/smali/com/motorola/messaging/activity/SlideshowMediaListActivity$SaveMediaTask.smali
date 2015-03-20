.class Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;
.super Landroid/os/AsyncTask;
.source "SlideshowMediaListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowMediaListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveMediaTask"
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
.field private mError:I

.field private mErrorCount:I

.field private mFinished:Z

.field private mMediaToSave:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/MediaModel;>;"
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mMediaToSave:Ljava/util/List;

    .line 251
    return-void
.end method

.method static synthetic access$400(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mFinished:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mMediaToSave:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mError:I

    if-nez v2, :cond_3

    .line 279
    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const-string v2, "SlideshowMediaListAct"

    const-string v3, "doInBackground - Saving Media"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mMediaToSave:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v2, v5, v4}, Lcom/motorola/messaging/model/MediaModel;->save(Ljava/lang/String;Z)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v1

    .line 285
    .local v1, "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->getError()I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mError:I

    .line 287
    iget v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mError:I

    packed-switch v2, :pswitch_data_0

    .line 293
    iget v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mErrorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mErrorCount:I

    .line 298
    :cond_1
    :pswitch_0
    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    const-string v2, "SlideshowMediaListAct"

    const-string v3, "doInBackground - Media Saving completed (either success or failure)"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_2
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :cond_3
    return-object v5

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    iput-boolean v5, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mFinished:Z

    .line 316
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 318
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    const/4 v2, 0x0

    # setter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$302(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 321
    :cond_0
    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mError:I

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mErrorCount:I

    if-lez v1, :cond_3

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$600(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "num_of_medias_to_save"

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mMediaToSave:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mError:I

    packed-switch v1, :pswitch_data_0

    .line 336
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$600(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 346
    :cond_2
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$600(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 330
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$600(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$600(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mMediaToSave:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "toastBody":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 344
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 255
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mMediaToSave:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 258
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$302(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 259
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 260
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mMediaToSave:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 261
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 263
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask$1;-><init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 271
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 273
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 311
    :cond_0
    return-void
.end method
