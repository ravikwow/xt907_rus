.class Lcom/motorola/messaging/activity/ComposeMessageActivity$20;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->launchAttachmentList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$20;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2373
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$20;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v1

    .line 2374
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$20;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->getMmsMessageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2375
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$20;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->saveAsMms()Landroid/net/Uri;

    .line 2377
    :cond_0
    if-eqz v1, :cond_1

    .line 2378
    invoke-virtual {v1}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 2379
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 2381
    :cond_1
    const-string v1, "LIST_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2382
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$20;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const-class v3, Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2383
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2384
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$20;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2385
    return-void
.end method
