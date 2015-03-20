.class Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask$1;
.super Ljava/lang/Object;
.source "SlideshowMediaListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask$1;->this$1:Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask$1;->this$1:Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->mFinished:Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->access$400(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask$1;->this$1:Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;

    iget-object v0, v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask$1;->this$1:Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;

    iget-object v0, v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 270
    :cond_0
    return-void
.end method
