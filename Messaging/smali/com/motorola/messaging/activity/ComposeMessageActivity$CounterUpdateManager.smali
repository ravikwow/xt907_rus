.class Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterUpdateManager"
.end annotation


# instance fields
.field private final EMPTY_PARAMS:[I

.field private mCounterHandler:Landroid/os/Handler;

.field private mCounterText:Ljava/lang/String;

.field private mCounterVisibility:I

.field private mMmsCounter:Ljava/lang/String;

.field private mTextParams:[I

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 1

    .prologue
    .line 588
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->EMPTY_PARAMS:[I

    .line 606
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->EMPTY_PARAMS:[I

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterText:Ljava/lang/String;

    .line 615
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p2, "x1"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$1;

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    .prologue
    .line 588
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterVisibility:I

    return v0
.end method

.method static synthetic access$4400(Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateCounter(Ljava/lang/String;I)V

    return-void
.end method

.method private addEmailToText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 701
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "tempText":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    :cond_0
    return-object v0
.end method

.method private getMmsCounterString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mMmsCounter:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mMmsCounter:Ljava/lang/String;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mMmsCounter:Ljava/lang/String;

    return-object v0
.end method

.method private updateCounter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "counterText"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    const/16 v4, 0x64

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "update":Z
    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterText:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterText:Ljava/lang/String;

    .line 744
    const/4 v0, 0x1

    .line 746
    :cond_0
    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterVisibility:I

    if-eq v1, p2, :cond_1

    .line 747
    iput p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterVisibility:I

    .line 748
    const/4 v0, 0x1

    .line 750
    :cond_1
    if-eqz v0, :cond_2

    .line 751
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 752
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mCounterHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 755
    :cond_2
    return-void
.end method

.method private updateTextLength(Ljava/lang/CharSequence;Z)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "notify"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 711
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    .line 713
    .local v0, "previousTextParams":[I
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v1

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportNationalTable()Z

    move-result v4

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportLockingShiftTable()Z

    move-result v5

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v1, v4, v5, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    .line 723
    aget v1, v0, v7

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v4, v4, v7

    if-eq v1, v4, :cond_0

    .line 726
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v4

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v1, v1, v7

    if-eq v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1, p2}, Lcom/motorola/messaging/composer/WorkingMessage;->setHasNon7BitEncoding(ZZ)V

    .line 729
    :cond_0
    aget v1, v0, v3

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v4, v4, v3

    if-eq v1, v4, :cond_1

    .line 733
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v3, v4, v3

    invoke-virtual {v1, v3}, Lcom/motorola/messaging/composer/WorkingMessage;->setSegmentCount(I)V

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->setCharacterCount(I)V

    .line 738
    return-void

    :cond_2
    move v1, v3

    .line 726
    goto :goto_0
.end method


# virtual methods
.method public getEncodeType()I
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getUnitsRemaining()I
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public updateText(Ljava/lang/CharSequence;IIIZ)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I
    .param p5, "notify"    # Z

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 635
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->addEmailToText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "tempText":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 653
    if-ge p3, p4, :cond_3

    move v1, v2

    .line 657
    .local v1, "textAdded":Z
    :goto_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsToMmsConversionEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMMSForLength()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMMSOnlyForSMSEmail()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 660
    :cond_1
    invoke-direct {p0, v0, p5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateTextLength(Ljava/lang/CharSequence;Z)V

    .line 664
    :cond_2
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->getMmsCounterString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateCounter(Ljava/lang/String;I)V

    .line 666
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->EMPTY_PARAMS:[I

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    .line 698
    .end local v1    # "textAdded":Z
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 653
    goto :goto_0

    .line 677
    :cond_4
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimitAvailable()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsCharsRemainTilCounter()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x46

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 680
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->EMPTY_PARAMS:[I

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    .line 681
    invoke-direct {p0, v8, v7}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 685
    :cond_5
    invoke-direct {p0, v0, p5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateTextLength(Ljava/lang/CharSequence;Z)V

    .line 688
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 689
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->getMmsCounterString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 690
    :cond_6
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v4, v4, v2

    if-lez v4, :cond_8

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimitAvailable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    if-eq v5, v2, :cond_7

    :goto_2
    invoke-static {v2}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimit(Z)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateCounter(Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    .line 693
    :cond_8
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v4, v4, v3

    if-gt v4, v2, :cond_9

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v2, v2, v6

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsCharsRemainTilCounter()I

    move-result v4

    if-gt v2, v4, :cond_a

    .line 694
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->mTextParams:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateCounter(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 696
    :cond_a
    invoke-direct {p0, v8, v7}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateCounter(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
