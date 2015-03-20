.class Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;
.super Landroid/os/AsyncTask;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/net/Uri;)V
    .locals 0
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1066
    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->mImageUri:Landroid/net/Uri;

    .line 1067
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1076
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v4

    .line 1077
    .local v4, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->mImageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mMessageId:J
    invoke-static {v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$500(Lcom/motorola/messaging/activity/SlideshowEditActivity;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;
    invoke-static {v5}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$200(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/util/MessageUtils;->resizeImage(Landroid/content/Context;Landroid/net/Uri;JLcom/motorola/messaging/model/ContentRestriction;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1062
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 4
    .param p1, "resizedUri"    # Landroid/net/Uri;

    .prologue
    .line 1086
    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    const-string v1, "SlideshowEditActvy"

    const-string v2, "ResizeImageTask - onPostExecute"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_0
    if-eqz p1, :cond_1

    .line 1091
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z
    invoke-static {v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$700(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Z

    move-result v3

    # invokes: Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMediaFromUri(ILandroid/net/Uri;Z)V
    invoke-static {v1, v2, p1, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$800(Lcom/motorola/messaging/activity/SlideshowEditActivity;ILandroid/net/Uri;Z)V

    .line 1101
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_1
    return-void

    .line 1093
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1094
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$900(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_media_type"

    const v3, 0x7f0b00ef

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1095
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$900(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1097
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/4 v2, 0x0

    # setter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$702(Lcom/motorola/messaging/activity/SlideshowEditActivity;Z)Z

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SlideshowEditActvy"

    const-string v2, "Not able to dismiss dialog of progress resizing."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1062
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1072
    return-void
.end method
