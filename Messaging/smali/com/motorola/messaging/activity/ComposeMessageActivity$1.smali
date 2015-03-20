.class Lcom/motorola/messaging/activity/ComposeMessageActivity$1;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
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
    .line 446
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 449
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->saveAsMms()Landroid/net/Uri;

    .line 462
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->resolveComposerWidget()V

    .line 463
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->viewMmsContent(Lcom/motorola/messaging/model/SmilModel;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$400(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/model/SmilModel;)V

    goto :goto_0

    .line 467
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->launchSlideShowEditor()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    goto :goto_0

    .line 471
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->setMMSAttachment(ILandroid/net/Uri;Z)I

    .line 472
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 476
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$1;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->launchAttachmentList()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
