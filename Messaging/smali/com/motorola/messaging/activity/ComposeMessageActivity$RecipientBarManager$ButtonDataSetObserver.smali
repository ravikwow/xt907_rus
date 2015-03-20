.class Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonDataSetObserver"
.end annotation


# instance fields
.field groupTypeInformationRunnable:Ljava/lang/Runnable;

.field private mShowGroupTypeWarning:Z

.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V
    .locals 1

    .prologue
    .line 5749
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 5751
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->groupTypeInformationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;Lcom/motorola/messaging/activity/ComposeMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    .param p2, "x1"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$1;

    .prologue
    .line 5749
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    .prologue
    .line 5749
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->mShowGroupTypeWarning:Z

    return v0
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .prologue
    .line 5793
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5794
    const-string v1, "ComposeMsgActivity"

    const-string v2, "button adapter content changed"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 5799
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5800
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->access$6000(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->getLargestEmail()Ljava/lang/String;

    move-result-object v0

    .line 5801
    .local v0, "curLargestEmail":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5802
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1802(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5803
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 5808
    .end local v0    # "curLargestEmail":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 5810
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getGroupMessageTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5811
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->isLoadingDrafts()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5812
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->groupTypeInformationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5817
    :cond_2
    :goto_0
    return-void

    .line 5814
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->groupTypeInformationRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5771
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5772
    const-string v3, "ComposeMsgActivity"

    const-string v4, "button adapter invalidated"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 5776
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->access$6000(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 5778
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v3, v3, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/messaging/composer/WorkingMessage;->getRecipientCount()I

    move-result v2

    .line 5779
    .local v2, "oldRecipientCount":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 5782
    .local v1, "newRecipientCount":I
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v3, v3, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/messaging/composer/WorkingMessage;->isLoadingDrafts()Z

    move-result v3

    if-nez v3, :cond_1

    if-gt v2, v5, :cond_1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 5784
    iput-boolean v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->mShowGroupTypeWarning:Z

    .line 5788
    :goto_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v3, v3, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->access$6000(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->hasEmail()Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/motorola/messaging/composer/WorkingMessage;->setWorkingRecipients(Ljava/util/List;Z)V

    .line 5789
    return-void

    .line 5786
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->mShowGroupTypeWarning:Z

    goto :goto_0
.end method
