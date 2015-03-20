.class Lcom/motorola/messaging/activity/ComposeMessageActivity$21;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->launchSlideShowEditor()V
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
    .line 2395
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2397
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2398
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    .line 2399
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->getMmsMessageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2400
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->saveAsMms()Landroid/net/Uri;

    .line 2402
    :cond_0
    if-eqz v0, :cond_1

    .line 2403
    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 2404
    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 2406
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const-class v3, Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2408
    const-string v3, "INTENT_EXTRA_COMPOSER_ADD"

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlyImmutableString()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2410
    const-string v0, "MESSAGE_ID"

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/messaging/composer/WorkingMessage;->getMmsMessageId()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2411
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2412
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2413
    return-void

    .line 2408
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$21;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
