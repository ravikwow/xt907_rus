.class Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;
.super Landroid/os/AsyncTask;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
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
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$sbId:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;Ljava/lang/StringBuilder;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->this$1:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->val$sbId:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 809
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 812
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->this$1:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->val$sbId:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 813
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 809
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 818
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->this$1:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->getAdapter()Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;->this$1:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->getAdapter()Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->clearAllCache()V

    .line 821
    :cond_0
    return-void
.end method
