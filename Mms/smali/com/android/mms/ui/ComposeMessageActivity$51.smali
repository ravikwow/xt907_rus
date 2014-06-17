.class Lcom/android/mms/ui/ComposeMessageActivity$51;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->processSendingWarnings(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mDialogId:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$requiresMms:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 1

    .prologue
    .line 4958
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$requiresMms:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4959
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->mDialogId:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 4966
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$requiresMms:Z

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getSendingWarningDialog(Z)I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8000(Lcom/android/mms/ui/ComposeMessageActivity;Z)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->mDialogId:I

    .line 4967
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->mDialogId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4958
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$51;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "dialogId"    # Ljava/lang/Integer;

    .prologue
    .line 4972
    const/4 v0, 0x0

    .line 4973
    .local v0, "mExitOnSent":Z
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getRecipientCount()I

    move-result v1

    .line 4974
    .local v1, "numRecipients":I
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$requiresMms:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4978
    const/4 v0, 0x1

    .line 4981
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 4982
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4983
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showNetworkErrorDialog(I)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8100(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 4993
    :cond_1
    :goto_0
    return-void

    .line 4985
    :cond_2
    if-eqz v0, :cond_1

    .line 4991
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4958
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$51;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
