.class Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;
.super Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddImageCallback"
.end annotation


# instance fields
.field private mAppendImage:Z

.field private mImageUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 1
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "appendImage"    # Z

    .prologue
    .line 836
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .line 837
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    .line 838
    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->mImageUri:Landroid/net/Uri;

    .line 839
    iput-boolean p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->mAppendImage:Z

    .line 840
    return-void
.end method


# virtual methods
.method public onPostExecute(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 844
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute(), result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_0
    const/4 v0, -0x4

    if-eq p1, v0, :cond_1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    .line 851
    :cond_1
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddImageCallback - onPostExecute(): resize image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 856
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "resize_image_uri"

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 857
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "resize_append"

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->mAppendImage:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 858
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 859
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddImageCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_4
    invoke-super {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->onPostExecute(I)V

    goto :goto_0
.end method
