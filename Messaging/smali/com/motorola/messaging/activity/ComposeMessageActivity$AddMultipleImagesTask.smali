.class Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddMultipleImagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mDialog:Landroid/app/ProgressDialog;

.field private mResizedImageFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V
    .locals 1
    .param p2, "count"    # I

    .prologue
    .line 3945
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mResizedImageFiles:Ljava/util/List;

    .line 3946
    iput p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mCount:I

    .line 3947
    return-void
.end method

.method private isFatalResult(I)Z
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 4021
    const/4 v0, 0x0

    .line 4022
    .local v0, "isFatal":Z
    if-eqz p1, :cond_1

    .line 4023
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v1, -0x5

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 4025
    :goto_0
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddMultipleImagesTask - Non OK result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    :cond_1
    return v0

    .line 4023
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeImage(Landroid/net/Uri;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x1

    .line 4077
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4078
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeImage, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4081
    :cond_0
    const/4 v7, 0x0

    .line 4083
    .local v7, "resizedImageFile":Ljava/io/File;
    :try_start_0
    new-instance v0, Lcom/motorola/messaging/model/ImageResizer;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v0, v1, p1}, Lcom/motorola/messaging/model/ImageResizer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4085
    .local v0, "resizer":Lcom/motorola/messaging/model/ImageResizer;
    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v8

    .line 4086
    .local v8, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxImageWidth()I

    move-result v2

    invoke-virtual {v8}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxImageHeight()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->getCurrentNonTextSmilSize()I

    move-result v4

    invoke-static {v8, v4}, Lcom/motorola/messaging/util/MessageUtils;->getMediaSizeLimit(Lcom/motorola/messaging/model/ContentRestriction;I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/model/ImageResizer;->getResizedImageFile(ZIIJ)Ljava/io/File;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 4095
    .end local v0    # "resizer":Lcom/motorola/messaging/model/ImageResizer;
    .end local v8    # "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    :goto_0
    const/4 v9, -0x2

    .line 4096
    .local v9, "result":I
    if-eqz v7, :cond_1

    .line 4097
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mResizedImageFiles:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4098
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v10}, Lcom/motorola/messaging/composer/WorkingMessage;->setMMSAttachment(ILandroid/net/Uri;Z)I

    move-result v9

    .line 4101
    :cond_1
    return v9

    .line 4091
    .end local v9    # "result":I
    :catch_0
    move-exception v6

    .line 4092
    .local v6, "e1":Lcom/motorola/messaging/util/MmsException;
    const-string v1, "ComposeMsgActivity"

    const-string v2, "Unknown error when resizing image."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 3937
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    .line 3941
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3943
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Landroid/os/Parcelable;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Landroid/os/Parcelable;

    .prologue
    .line 3970
    array-length v0, p1

    .line 3971
    .local v0, "count":I
    const/4 v4, 0x0

    .line 3974
    .local v4, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3975
    :try_start_0
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, p1, v2

    check-cast v5, Landroid/net/Uri;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Lcom/motorola/messaging/composer/WorkingMessage;->setMMSAttachment(ILandroid/net/Uri;Z)I

    move-result v4

    .line 3977
    const/4 v5, -0x4

    if-eq v4, v5, :cond_0

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 3979
    :cond_0
    aget-object v5, p1, v2

    check-cast v5, Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->resizeImage(Landroid/net/Uri;)I

    move-result v4

    .line 3982
    :cond_1
    invoke-direct {p0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->isFatalResult(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3983
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 3990
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3991
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4000
    :cond_2
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/WorkingMessage;->saveAsMms()Landroid/net/Uri;

    .line 4003
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mResizedImageFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 4004
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4005
    const-string v5, "ComposeMsgActivity"

    const-string v6, "File could not be deleted."

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3974
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4009
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mResizedImageFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4011
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 4000
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v6}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/messaging/composer/WorkingMessage;->saveAsMms()Landroid/net/Uri;

    .line 4003
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mResizedImageFiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 4004
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_6

    .line 4005
    const-string v6, "ComposeMsgActivity"

    const-string v7, "File could not be deleted."

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4009
    .end local v1    # "file":Ljava/io/File;
    :cond_7
    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mResizedImageFiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    throw v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3925
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->doInBackground([Landroid/os/Parcelable;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 4015
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4016
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddMultipleImagesTask.onCancelled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4018
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 4039
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4040
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddMultipleImagesTask.onPostExecute START "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4043
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4044
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4047
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 4070
    :cond_2
    :goto_0
    :sswitch_0
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4071
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddMultipleImagesTask.onPostExecute - END "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4074
    :cond_3
    return-void

    .line 4051
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4052
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4070
    :catchall_0
    move-exception v0

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4071
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddMultipleImagesTask.onPostExecute - END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    throw v0

    .line 4065
    :sswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4047
    nop

    :sswitch_data_0
    .sparse-switch
        -0x32 -> :sswitch_2
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_1
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3925
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 3951
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    .line 3952
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 3953
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 3954
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v3, 0x7f0b007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$1;

    invoke-direct {v3, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3960
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$2;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$2;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3964
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 3965
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3966
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 3967
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3925
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 4031
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4033
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 4035
    :cond_0
    return-void
.end method
