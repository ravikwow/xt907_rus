.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerHandler"
.end annotation


# instance fields
.field private mBlockedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 1

    .prologue
    .line 6216
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6217
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->mBlockedMessages:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p2, "x1"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$1;

    .prologue
    .line 6216
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public blockMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 6225
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6226
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->mBlockedMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6227
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6240
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->mBlockedMessages:Ljava/util/Set;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6241
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6242
    const-string v6, "ComposeMsgActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mComposerHandler blocked msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6325
    :cond_0
    :goto_0
    return-void

    .line 6247
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 6249
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    .line 6250
    .local v2, "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v7

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->viewMmsContent(Lcom/motorola/messaging/model/SmilModel;)V
    invoke-static {v6, v7}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$400(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/model/SmilModel;)V

    goto :goto_0

    .line 6254
    .end local v2    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    .line 6255
    .restart local v2    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/motorola/messaging/model/SmilModel;->getAttachment(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/VcardModel;

    .line 6256
    .local v1, "model":Lcom/motorola/messaging/model/VcardModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/util/MessageUtils;->getViewMediaIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6258
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6262
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "model":Lcom/motorola/messaging/model/VcardModel;
    .end local v2    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    .line 6264
    .restart local v2    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    new-instance v5, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    invoke-static {v6}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    move-result-object v6

    invoke-direct {v5, p0, v6, v8, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;Landroid/os/Handler;ILcom/motorola/messaging/composer/MessageItem;)V

    .line 6279
    .local v5, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v6, "save_media"

    invoke-virtual {v5, v6}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    goto :goto_0

    .line 6283
    .end local v2    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    .end local v5    # "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    .line 6284
    .restart local v2    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v4

    .line 6285
    .local v4, "slide":Lcom/motorola/messaging/model/SlideModel;
    const/4 v1, 0x0

    .line 6287
    .local v1, "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 6288
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v1

    .line 6295
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 6296
    new-instance v6, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;

    iget-object v7, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v6, v7, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ShareMediaTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/model/MediaModel;)V

    new-array v7, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 6289
    :cond_3
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->getAudio()Lcom/motorola/messaging/model/AudioModel;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 6290
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->getAudio()Lcom/motorola/messaging/model/AudioModel;

    move-result-object v1

    goto :goto_1

    .line 6291
    :cond_4
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->getVideo()Lcom/motorola/messaging/model/VideoModel;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 6292
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->getVideo()Lcom/motorola/messaging/model/VideoModel;

    move-result-object v1

    goto :goto_1

    .line 6298
    :cond_5
    const-string v6, "ComposeMsgActivity"

    const-string v7, "Could not share media"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6303
    .end local v1    # "model":Lcom/motorola/messaging/model/MediaModel;
    .end local v2    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    .end local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :pswitch_4
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6304
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const-string v7, "in"

    invoke-static {v6, v7}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6306
    :cond_6
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->processSendingWarnings(Z)V
    invoke-static {v6, v9}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7100(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 6307
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    .line 6308
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 6312
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :pswitch_5
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;
    invoke-static {v7}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/adapter/MessageListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 6315
    :pswitch_6
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMessageAddedToList:Z
    invoke-static {v6, v9}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7202(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z

    goto/16 :goto_0

    .line 6318
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    .line 6319
    .restart local v2    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    iget-object v7, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/motorola/messaging/model/SmilModel;->getAttachment(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v6

    check-cast v6, Lcom/motorola/messaging/model/VcardModel;

    invoke-static {v7, v6}, Lcom/motorola/messaging/util/MessageUtils;->addLocationFavorite(Landroid/app/Activity;Lcom/motorola/messaging/model/VcardModel;)V

    goto/16 :goto_0

    .line 6247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public unblockMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 6235
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->mBlockedMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6236
    return-void
.end method
