.class Lcom/motorola/messaging/activity/SlideshowEditActivity$7;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$7;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iput p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$7;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1243
    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    const-string v0, "SlideshowEditActvy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog, dialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$7;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_0
    return-void
.end method
