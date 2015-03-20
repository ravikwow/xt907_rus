.class Lcom/motorola/messaging/activity/SlideshowEditActivity$2;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

.field final synthetic val$messageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;->val$messageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # invokes: Lcom/motorola/messaging/activity/SlideshowEditActivity;->isSlideshowModelEmpty()Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$100(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;->val$messageUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$200(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;->val$messageUri:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Lcom/motorola/messaging/conversation/ConversationManager;->updateDraftMmsMessage(Lcom/motorola/messaging/pdu/SendReq;Lcom/motorola/messaging/model/SmilModel;Landroid/net/Uri;)V

    goto :goto_0
.end method
