.class Lcom/motorola/messaging/activity/ComposeMessageActivity$8;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mResult:I

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$appendMedia:Z

.field final synthetic val$mediaCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

.field final synthetic val$mediaData:Ljava/lang/String;

.field final synthetic val$mediaName:Ljava/lang/String;

.field final synthetic val$mediaUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/os/Handler;ILcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 953
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    iput-object p5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaName:Ljava/lang/String;

    iput-object p7, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaData:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$appendMedia:Z

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->mResult:I

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 959
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    invoke-virtual {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->getMediaType()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaName:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaData:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$appendMedia:Z

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/composer/WorkingMessage;->setMMSAttachment(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->mResult:I

    .line 961
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v8

    .line 962
    .local v8, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    invoke-static {v8}, Lcom/motorola/messaging/util/MessageUtils;->getMMSMediaType(Lcom/motorola/messaging/model/SmilModel;)I

    move-result v6

    .line 964
    .local v6, "mediaType":I
    packed-switch v6, :pswitch_data_0

    .line 982
    :goto_0
    :pswitch_0
    return-void

    .line 966
    :pswitch_1
    invoke-virtual {v8, v9}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v7

    .line 967
    .local v7, "slideModel":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v7}, Lcom/motorola/messaging/model/SlideModel;->getVideo()Lcom/motorola/messaging/model/VideoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/model/VideoModel;->preFetchThumbnail()V

    goto :goto_0

    .line 971
    .end local v7    # "slideModel":Lcom/motorola/messaging/model/SlideModel;
    :pswitch_2
    invoke-virtual {v8, v9}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v7

    .line 972
    .restart local v7    # "slideModel":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v7}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/model/ImageModel;->preFetchThumbnail()V

    goto :goto_0

    .line 979
    .end local v7    # "slideModel":Lcom/motorola/messaging/model/SlideModel;
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->saveAsMms()Landroid/net/Uri;

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPostExecute()V
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->val$mediaCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$8;->mResult:I

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->onPostExecute(I)V

    .line 987
    return-void
.end method
