.class Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;)V
    .locals 0
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 3555
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3556
    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->mImageUri:Landroid/net/Uri;

    .line 3557
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->mImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->isValidLatLong(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3552
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "isValidLatLong"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 3566
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3567
    const-string v0, "ComposeMsgActivity"

    const-string v1, "VerifyLocationTask - onPostExecute"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3571
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3573
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "geo_tagged_image_uri"

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3574
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "append"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3575
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 3580
    :cond_1
    :goto_0
    return-void

    .line 3578
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->mImageUri:Landroid/net/Uri;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3552
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$VerifyLocationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
