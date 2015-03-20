.class Lcom/motorola/messaging/activity/SlideshowActivity$2;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

.field final synthetic val$playerBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$2;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowActivity$2;->val$playerBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "SlideshowActivity"

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$2;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$000(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/dom/smil/SmilPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$2;->val$playerBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->playOrRestore(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method
