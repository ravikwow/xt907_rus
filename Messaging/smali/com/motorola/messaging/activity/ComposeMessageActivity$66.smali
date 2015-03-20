.class Lcom/motorola/messaging/activity/ComposeMessageActivity$66;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onProtocolChanged(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$isMms:Z

.field final synthetic val$messageState:I


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;IZ)V
    .locals 0

    .prologue
    .line 6062
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;->val$messageState:I

    iput-boolean p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;->val$isMms:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6064
    const/4 v0, 0x0

    .line 6066
    .local v0, "showToast":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getShowMessageGroupTypeWarningAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6068
    const/4 v0, 0x1

    .line 6080
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 6081
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;->val$isMms:Z

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showConvertProtocolToast(Z)V
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 6083
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 6084
    return-void

    .line 6069
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMultipleRecipients()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$66;->val$messageState:I

    and-int/lit8 v1, v1, -0x2

    if-gtz v1, :cond_3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getShowMessageGroupTypeWarning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6077
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
