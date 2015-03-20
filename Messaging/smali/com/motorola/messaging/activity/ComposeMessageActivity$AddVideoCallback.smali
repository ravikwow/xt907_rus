.class Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;
.super Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddVideoCallback"
.end annotation


# instance fields
.field private mVideoUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;)V
    .locals 1
    .param p2, "videoUri"    # Landroid/net/Uri;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .line 873
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    .line 874
    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->mVideoUri:Landroid/net/Uri;

    .line 875
    return-void
.end method


# virtual methods
.method public onPostExecute(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    .line 879
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute(), result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->mVideoUri:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->getCurrentNonTextSmilSize()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/motorola/messaging/model/VideoResizingUtils;->getEditVideoIntent(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;

    move-result-object v0

    .line 888
    .local v0, "resizeVideoIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsVideoResizeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/motorola/messaging/util/MessageUtils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x4

    if-eq p1, v1, :cond_1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_4

    .line 891
    :cond_1
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddVideoCallback - onPostExecute(): resize video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 896
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "resize_video_intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 897
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 900
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddVideoCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v2, 0x0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 904
    :goto_0
    return-void

    .line 902
    :cond_4
    invoke-super {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->onPostExecute(I)V

    goto :goto_0
.end method
