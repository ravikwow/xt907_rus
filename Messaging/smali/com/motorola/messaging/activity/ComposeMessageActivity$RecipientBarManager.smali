.class Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientBarManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;
    }
.end annotation


# instance fields
.field private mAutoCompleteAdapter:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

.field private mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

.field private mButtonDataSetObserver:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

.field private mForceComposerMode:Z

.field private mHeight:I

.field private mInitByGroupMessage:Z

.field private mMode:I

.field private mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V
    .locals 2
    .param p2, "forceComposerMode"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5547
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5535
    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .line 5539
    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mMode:I

    .line 5541
    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mForceComposerMode:Z

    .line 5542
    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mInitByGroupMessage:Z

    .line 5545
    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonDataSetObserver:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    .line 5549
    if-nez p2, :cond_0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->isConversationEmpty()Z
    invoke-static {p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5550
    :cond_0
    iput-boolean p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mForceComposerMode:Z

    .line 5551
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->initComposer()V

    .line 5555
    :goto_0
    return-void

    .line 5553
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->initializeReadOnlyBar()V

    goto :goto_0
.end method

.method static synthetic access$5900(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    .prologue
    .line 5534
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mInitByGroupMessage:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    .param p1, "x1"    # Z

    .prologue
    .line 5534
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mInitByGroupMessage:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    .prologue
    .line 5534
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    .prologue
    .line 5534
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->updateTitle()V

    return-void
.end method

.method private hideComposer()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 5701
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    if-eqz v0, :cond_0

    .line 5702
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5703
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5705
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->destroy()V

    .line 5707
    :cond_0
    return-void
.end method

.method private inflateWidget()V
    .locals 5

    .prologue
    const v4, 0x7f090053

    const/4 v3, 0x0

    .line 5822
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    if-nez v1, :cond_2

    .line 5823
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5824
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 5825
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .line 5827
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setMode(I)V

    .line 5837
    .end local v0    # "stub":Landroid/view/ViewStub;
    :goto_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isContactPickerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5838
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setPickerIcon(I)V

    .line 5840
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$2;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$2;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setOnPickerClickListener(Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;)V

    .line 5847
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setOnButtonClickListener(Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;)V

    .line 5878
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v3, 0x7f0b01ad

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setHint(Ljava/lang/String;)V

    .line 5879
    return-void

    .line 5829
    .restart local v0    # "stub":Landroid/view/ViewStub;
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .line 5830
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5833
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5834
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initButtonAdapter()V
    .locals 3

    .prologue
    .line 5733
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    .line 5735
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;Lcom/motorola/messaging/activity/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonDataSetObserver:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    .line 5737
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonDataSetObserver:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5739
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsMaxNumRecipientsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5740
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsMaxNumRecipients()I

    move-result v1

    new-instance v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$1;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->setAddressesCapacity(ILcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;)V

    .line 5746
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setButtonAdapter(Lcom/motorola/messaging/addressingwidget/ButtonAdapter;)V

    .line 5747
    return-void
.end method

.method private initComposer()V
    .locals 2

    .prologue
    .line 5712
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5713
    const-string v0, "ComposeMsgActivity"

    const-string v1, "initComposer"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5716
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mHeight:I

    .line 5717
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->inflateWidget()V

    .line 5718
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->initButtonAdapter()V

    .line 5719
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->initDropDownAdapters()V

    .line 5720
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mAutoCompleteAdapter:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->addAdapter(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;)V

    .line 5721
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->add(Lcom/motorola/messaging/contact/ContactList;)V

    .line 5722
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mMode:I

    .line 5724
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->updateTitle()V

    .line 5725
    return-void
.end method

.method private initDropDownAdapters()V
    .locals 3

    .prologue
    .line 5728
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mAutoCompleteAdapter:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    .line 5729
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mAutoCompleteAdapter:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setAutoCompleteAdapter(Landroid/widget/CursorAdapter;)V

    .line 5730
    return-void
.end method

.method private initializeReadOnlyBar()V
    .locals 1

    .prologue
    .line 5654
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mHeight:I

    .line 5655
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->hideComposer()V

    .line 5656
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mMode:I

    .line 5657
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->registerContactListener()V

    .line 5658
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->updateTitle()V

    .line 5659
    return-void
.end method

.method private registerContactListener()V
    .locals 2

    .prologue
    .line 5908
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    .line 5909
    .local v0, "recipients":Lcom/motorola/messaging/contact/ContactList;
    invoke-virtual {v0, p0}, Lcom/motorola/messaging/contact/ContactList;->addListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V

    .line 5910
    return-void
.end method

.method private updateTitle()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 5916
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    .line 5920
    .local v1, "recipients":Lcom/motorola/messaging/contact/ContactList;
    iget v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 5921
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v5, 0x7f0b004c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5922
    .local v3, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5923
    .local v2, "subtitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/view/InteractiveActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/motorola/messaging/view/InteractiveActionBar;->setClickable(Z)V

    .line 5958
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/view/InteractiveActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/motorola/messaging/view/InteractiveActionBar;->setTitle(Ljava/lang/String;)V

    .line 5959
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/view/InteractiveActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/motorola/messaging/view/InteractiveActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 5960
    return-void

    .line 5925
    .end local v2    # "subtitle":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/view/InteractiveActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/motorola/messaging/view/InteractiveActionBar;->setClickable(Z)V

    .line 5926
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 5928
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 5930
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isLocalNumber()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isFixedDialContact()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5934
    :cond_2
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5935
    .restart local v3    # "title":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    .line 5939
    .restart local v2    # "subtitle":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5940
    const/4 v2, 0x0

    .line 5941
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/view/InteractiveActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/motorola/messaging/view/InteractiveActionBar;->setClickable(Z)V

    goto :goto_0

    .line 5944
    .end local v2    # "subtitle":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isOnlineAlbum()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5945
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5949
    .restart local v3    # "title":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 5950
    .restart local v2    # "subtitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/view/InteractiveActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/motorola/messaging/view/InteractiveActionBar;->setClickable(Z)V

    goto :goto_0

    .line 5947
    .end local v2    # "subtitle":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getFormattedAddress()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_1

    .line 5953
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v3    # "title":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/contact/ContactList;->getFormattedListName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 5954
    .restart local v3    # "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v5, 0x7f0b004b

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "subtitle":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5663
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mAutoCompleteAdapter:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    if-eqz v0, :cond_0

    .line 5664
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mAutoCompleteAdapter:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 5665
    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mAutoCompleteAdapter:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    .line 5667
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mForceComposerMode:Z

    .line 5668
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonDataSetObserver:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_1

    .line 5670
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonDataSetObserver:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5671
    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonDataSetObserver:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    .line 5673
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsMaxNumRecipientsEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_2

    .line 5675
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsMaxNumRecipients()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->setAddressesCapacity(ILcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;)V

    .line 5677
    :cond_2
    return-void
.end method

.method public fillComposer(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5631
    .local p1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5632
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->add(Ljava/util/List;)V

    .line 5634
    :cond_0
    return-void
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5612
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_0

    .line 5613
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 5615
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComposerWidget()Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    .locals 1

    .prologue
    .line 5882
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    return-object v0
.end method

.method public getForceComposerMode()Z
    .locals 1

    .prologue
    .line 5650
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mForceComposerMode:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 5886
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    if-eqz v0, :cond_0

    .line 5887
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mHeight:I

    .line 5889
    :cond_0
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mHeight:I

    return v0
.end method

.method public getLargestEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5577
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_0

    .line 5578
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->getLargestEmail()Ljava/lang/String;

    move-result-object v0

    .line 5580
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortCodes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5584
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v4, :cond_1

    .line 5585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5586
    .local v3, "shortCodes":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 5588
    .local v1, "sep":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v4}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->getShortCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5589
    .local v2, "shortCode":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5590
    const-string v1, ", "

    goto :goto_0

    .line 5592
    .end local v2    # "shortCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5594
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sep":Ljava/lang/String;
    .end local v3    # "shortCodes":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_1
    const-string v4, ""

    goto :goto_1
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 5963
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public hasInvalidAddress()Z
    .locals 1

    .prologue
    .line 5605
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_0

    .line 5606
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->hasInvalidAddresses()Z

    move-result v0

    .line 5608
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnlineAlbumAddress()Z
    .locals 1

    .prologue
    .line 5570
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_0

    .line 5571
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->hasOnlineAlbumAddress()Z

    move-result v0

    .line 5573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidAddress()Z
    .locals 1

    .prologue
    .line 5598
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_0

    .line 5599
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->hasValidAddresses()Z

    move-result v0

    .line 5601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initByGroupMessage()V
    .locals 1

    .prologue
    .line 5697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mInitByGroupMessage:Z

    .line 5698
    return-void
.end method

.method public isComposerVisible()Z
    .locals 2

    .prologue
    .line 5680
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContactInvalidated(Lcom/motorola/messaging/contact/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 5904
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/messaging/contact/Contact;->refresh(Z)V

    .line 5905
    return-void
.end method

.method public onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V
    .locals 2
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 5894
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$4;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$4;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5900
    return-void
.end method

.method public resolveComposerWidget()V
    .locals 1

    .prologue
    .line 5686
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5687
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->convertTextToButton()V

    .line 5688
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->resolveButtons()V

    .line 5690
    :cond_0
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeValue"    # I

    .prologue
    .line 5693
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mWidget:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setImeOptionsForTextView(I)V

    .line 5694
    return-void
.end method

.method public switchToReadOnly()V
    .locals 1

    .prologue
    .line 5638
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5639
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->initializeReadOnlyBar()V

    .line 5641
    :cond_0
    return-void
.end method

.method public switchToReadWrite()V
    .locals 1

    .prologue
    .line 5644
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->isComposerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5645
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->initComposer()V

    .line 5647
    :cond_0
    return-void
.end method

.method public updateButton(JLjava/util/Set;)V
    .locals 1
    .param p1, "buttonId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5564
    .local p3, "selectedAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_0

    .line 5565
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->updateButton(JLjava/util/Set;)V

    .line 5567
    :cond_0
    return-void
.end method

.method public updateButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldAddress"    # Ljava/lang/String;
    .param p2, "newAddress"    # Ljava/lang/String;

    .prologue
    .line 5558
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    if-eqz v0, :cond_0

    .line 5559
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->updateButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 5561
    :cond_0
    return-void
.end method
