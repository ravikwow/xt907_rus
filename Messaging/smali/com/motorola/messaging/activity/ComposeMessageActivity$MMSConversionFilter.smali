.class Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MMSConversionFilter"
.end annotation


# instance fields
.field private mThreshold:I

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V
    .locals 0
    .param p2, "threshhold"    # I

    .prologue
    .line 4240
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4241
    iput p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->mThreshold:I

    .line 4242
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 4248
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSmsToMmsConversionConfirmed:Z
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4251
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4252
    invoke-virtual {v2, p5, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4255
    .local v4, "tempNewText":Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mLargestEmailRecipient:Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4259
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v5

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportNationalTable()Z

    move-result v6

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportLockingShiftTable()Z

    move-result v7

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I

    move-result-object v3

    .line 4263
    .local v3, "params":[I
    const/4 v5, 0x0

    aget v1, v3, v5

    .line 4264
    .local v1, "msgCount":I
    const/4 v5, 0x3

    aget v0, v3, v5

    .line 4266
    .local v0, "encodetype":I
    iget v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->mThreshold:I

    if-gt v1, v5, :cond_1

    .line 4268
    const/4 v5, 0x0

    .line 4296
    .end local v0    # "encodetype":I
    .end local v1    # "msgCount":I
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    .end local v3    # "params":[I
    .end local v4    # "tempNewText":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 4270
    .restart local v0    # "encodetype":I
    .restart local v1    # "msgCount":I
    .restart local v2    # "newText":Ljava/lang/StringBuilder;
    .restart local v3    # "params":[I
    .restart local v4    # "tempNewText":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsToMmsConversionEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4273
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "convert_to_mms_new_text"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4274
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v6, 0xe

    iget-object v7, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 4275
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    .line 4278
    :cond_2
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v6, 0x7f0b017f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 4282
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->getEncodeType()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 4284
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    .line 4286
    :cond_3
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->getUnitsRemaining()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mCounterUpdateManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$CounterUpdateManager;->getUnitsRemaining()I

    move-result v5

    add-int/2addr v5, p2

    invoke-interface {p1, p2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    :cond_4
    const-string v5, ""

    goto :goto_0

    .line 4293
    .end local v0    # "encodetype":I
    .end local v1    # "msgCount":I
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    .end local v3    # "params":[I
    .end local v4    # "tempNewText":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$MMSConversionFilter;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v6, 0x0

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSmsToMmsConversionConfirmed:Z
    invoke-static {v5, v6}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4102(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z

    .line 4296
    const/4 v5, 0x0

    goto :goto_0
.end method
