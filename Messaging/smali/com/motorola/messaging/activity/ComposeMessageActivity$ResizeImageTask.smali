.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeImageTask"
.end annotation


# instance fields
.field private mAppend:Z

.field private mImageUri:Landroid/net/Uri;

.field private mResizedUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 2
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "shallAppend"    # Z

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .line 1049
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    invoke-static {p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    .line 1050
    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->mImageUri:Landroid/net/Uri;

    .line 1051
    iput-boolean p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->mAppend:Z

    .line 1052
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 7

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->saveAsMms()Landroid/net/Uri;

    move-result-object v6

    .line 1058
    .local v6, "messageUri":Landroid/net/Uri;
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v4

    .line 1059
    .local v4, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->mImageUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/WorkingMessage;->getCurrentNonTextSmilSize()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/util/MessageUtils;->resizeImage(Landroid/content/Context;Landroid/net/Uri;JLcom/motorola/messaging/model/ContentRestriction;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->mResizedUri:Landroid/net/Uri;

    .line 1064
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->mResizedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->mResizedUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->mAppend:Z

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 1067
    :cond_0
    return-void
.end method

.method protected onPostExecute()V
    .locals 3

    .prologue
    .line 1071
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, "ComposeMsgActivity"

    const-string v1, "ResizeImageTask - onPostExecute"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->mResizedUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->removeMmsForcedState()V

    .line 1079
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 1080
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, -0x2

    const v2, 0x7f0b00ef

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showErrorDialogIfNeeded(II)V
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2100(Lcom/motorola/messaging/activity/ComposeMessageActivity;II)V

    .line 1082
    :cond_1
    return-void
.end method
