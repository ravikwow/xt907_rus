.class Lcom/android/mms/ui/ComposeMessageActivity$8;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 844
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 845
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "afterTextChanged called with invisible mRecipientsEditor"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 849
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v6, "Mms/compose"

    const-string v7, "RecipientsWatcher: afterTextChanged called with invisible mRecipientsEditor"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v4

    .line 855
    .local v4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Ljava/util/List;)V

    .line 856
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_1

    move v3, v6

    .line 857
    .local v3, "multiRecipients":Z
    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v8, v3}, Lcom/android/mms/ui/MessageListAdapter;->setIsGroupConversation(Z)V

    .line 858
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8, v3, v6}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 859
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v9

    invoke-virtual {v8, v9, v6}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 860
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 864
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "pos":I
    :goto_2
    if-ltz v5, :cond_3

    .line 865
    invoke-interface {p1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 866
    .local v0, "c":C
    const/16 v8, 0x20

    if-ne v0, v8, :cond_2

    .line 864
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v0    # "c":C
    .end local v3    # "multiRecipients":Z
    .end local v5    # "pos":I
    :cond_1
    move v3, v7

    .line 856
    goto :goto_1

    .line 869
    .restart local v0    # "c":C
    .restart local v3    # "multiRecipients":Z
    .restart local v5    # "pos":I
    :cond_2
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_3

    .line 870
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 871
    .local v1, "contacts":Lcom/android/mms/data/ContactList;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v8, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 872
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_4

    .line 873
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mGroupDialogShown:Z
    invoke-static {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 885
    .end local v0    # "c":C
    .end local v1    # "contacts":Lcom/android/mms/data/ContactList;
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 874
    .restart local v0    # "c":C
    .restart local v1    # "contacts":Lcom/android/mms/data/ContactList;
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mGroupDialogShown:Z
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getShowMessageGroupTypeWarning()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 876
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mGroupDialogShown:Z
    invoke-static {v7, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 877
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showGroupMessageWarningDialog()V
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 823
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 832
    return-void
.end method
