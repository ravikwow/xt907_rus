.class Lcom/motorola/messaging/activity/SlideshowActivity$5;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowActivity;->initMediaController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$5;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$5;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$400(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->getModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 252
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowActivity$5;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    const-class v3, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$5;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method
