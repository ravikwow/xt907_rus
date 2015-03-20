.class Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeVideoButtonListener"
.end annotation


# instance fields
.field private final mResizeVideoIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/content/Intent;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;->mResizeVideoIntent:Landroid/content/Intent;

    .line 1462
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1465
    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    const-string v0, "ComposeMsgActivity/ResizeVideoButtonListener"

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;->mResizeVideoIntent:Landroid/content/Intent;

    const-string v2, "outputPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mResizedVideoFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$1402(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1473
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;->mResizeVideoIntent:Landroid/content/Intent;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1474
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1475
    return-void
.end method
