.class Lcom/motorola/messaging/activity/ComposeMessageActivity$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTextLenght:I

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 1

    .prologue
    .line 485
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->mTextLenght:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 512
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->mTextLenght:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->mTextLenght:I

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 516
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 489
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->mTextLenght:I

    .line 490
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 493
    const/4 v5, 0x1

    .line 496
    .local v5, "notify":Z
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReadReport()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 497
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v5, 0x0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 506
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->updateText(Ljava/lang/CharSequence;IIIZ)V

    .line 507
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$2;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 509
    :cond_1
    return-void
.end method
