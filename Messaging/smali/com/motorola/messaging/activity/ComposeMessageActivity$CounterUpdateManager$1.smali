.class Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager$1;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 618
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 624
    :goto_0
    return-void

    .line 620
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterText:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->access$1500(Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterVisibility:I
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->access$1700(Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
